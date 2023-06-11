<%@page import ='com.sansege.enuity.*' %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>

<html>

	<head>

		<meta charset="utf-8">

		<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />

		<meta name="renderer" content="webkit">

		<meta charset="utf-8" />
		<title>三色格</title>
		<link rel="icon" href="img\ico.png" type="image/x-icon"/>
		<link rel="stylesheet" href="css/bgmove.css" />
		<script src="js/skel.min.js"></script>
		<script src="js/init.js"></script>
		<link rel="stylesheet" href="css/stylefot.css" />
		<link rel="stylesheet" href="css/style-wide.css" />
		<link rel="stylesheet" href="css/font-awesome.min.css" />
		<link rel="stylesheet" href="css/index.css" />
		<link rel="stylesheet" type="text/css" href="css/reset-min.css">
		<link href='css/css.css' rel='stylesheet' type='text/css'>
		<link href='css/progression.css' rel='stylesheet' type='text/css'>
		<link href='css/style.css' rel='stylesheet' type='text/css'>
		<!--必要样式-->
		<link rel="stylesheet" type="text/css" href="css/component.css" />

		<script type="text/javascript" src="js/jquery.1.7.1.min.js"></script>
		<script type="text/javascript" src="js/tabulous.js"></script>
		<script type="text/javascript" src="js/js.js"></script>

		<style type="text/css">
			ol,
			ul {
				list-style: none;
			}
			html,
			body {
				width: 100%;
				height: 100%;
				overflow: hidden;
			}
			
			svg {
				width: 100%;
				height: 100%;
			}
			
			svg g {
				mix-blend-mode: lighten;
			}
			
			svg polygon {
				stroke: none;
				fill: white;
			}
			
			.section-wrap {
				width: 100%;
				height: 100%;
				overflow: visible;
				transition: transform 1s cubic-bezier(0.86, 0, 0.03, 1);
				-webkit-transition: -webkit-transform 1s cubic-bezier(0.86, 0, 0.03, 1);
			}
			
			.section-wrap .section {
				position: relative;
				width: 100%;
				height: 100%;
				background-position: center center;
				background-repeat: no-repeat;
			}
			
			.section-wrap .section .title {
				width: 100%;
				position: absolute;
				top: 10%;
				color: #fff;
				font-size: 2.4em;
				text-align: center;
			}
			
			.section-wrap .section .title p {
				padding: 0 4%;
				opacity: 0;	
			}
			
			.section-wrap .section .title.active .tit {
				opacity: 1;
				transform: translateY(-25px);
				-webkit-transform: translateY(-25px);
				transition: all 2s cubic-bezier(0.86, 0, 0.8, 1);
				-webkit-transition: all 2s cubic-bezier(0.86, 0, 0.8, 1);
			}
			
			.section-wrap .section-1 {
				background-color: #337ab7
			}
			
			.section-wrap .section-2 {
				background-color: #5cb85c
			}
			
			.section-wrap .section-3 {
				background-color: #5bc0de
			}
			
			.section-wrap .section-4 {
				background-color: #f0ad4e
			}
			
			.section-wrap .section-5 {
				background-color: #d9534f
			}
			
			.put-section-0 {
				transform: translateY(0);
				-webkit-transform: translateY(0);
			}
			
			.put-section-1 {
				transform: translateY(-100%);
				-webkit-transform: translateY(-100%);
			}
			
			.put-section-2 {
				transform: translateY(-200%);
				-webkit-transform: translateY(-200%);
			}
			
			.put-section-3 {
				transform: translateY(-300%);
				-webkit-transform: translateY(-300%);
			}
			
			.put-section-4 {
				transform: translateY(-400%);
				-webkit-transform: translateY(-400%);
			}
			
			.section-btn {
				width: 14px;
				position: fixed;
				right: 4%;
				top: 50%;
			}
			
			.section-btn li {
				width: 14px;
				height: 14px;
				cursor: pointer;
				text-indent: -9999px;
				border-radius: 50%;
				-webkit-border-radius: 50%;
				margin-bottom: 12px;
				background: #BD362F;
				text-align: center;
				color: #fff;
				onsor: pointer;
			}
			
			.section-btn li.on {
				background: #fff
			}
			
			.arrow {
				opacity: 1;
				animation: arrow 3s cubic-bezier(0.5, 0, 0.1, 1) infinite;
				-webkit-animation: arrow 3s cubic-bezier(0.5, 0, 0.1, 1) infinite;
				transform: rotate(-90deg);
				-webkit-transform: rotate(-90deg);
				position: absolute;
				bottom: 10px;
				left: 50%;
				margin-left: -30px;
				width: 60px;
				height: 60px;
				border-radius: 100%;
				-webkit-border-radius: 100%;
				line-height: 60px;
				text-align: center;
				font-size: 20px;
				color: #fff;
				border: 1px solid #fff;
				cursor: pointer;
				overflow: hidden;
			}
			
			.arrow:hover {
				animation-play-state: paused;
				-webkit-animation-play-state: paused;
			}
			
			@keyframes arrow {
				%0,
				%100 {
					bottom: 10px;
					opacity: 1;
				}
				50% {
					bottom: 50px;
					opacity: .5
				}
			}
			
			@-webkit-keyframes arrow {
				%0,
				%100 {
					bottom: 10px;
					opacity: 1;
				}
				50% {
					bottom: 50px;
					opacity: .5
				}
			}
		</style>

		<!--[if lte IE 8]>

	<style type="text/css">

		html,body{width:100%; height:100%; overflow:scroll}

		.section-btn{display:none;}

	</style>

	<![endif]-->

	</head>

	<body>

		<section class="section-wrap">
			<div class="section section-1">
				<div class="titleword">
					<span>三色格</span>
					<p>城市的忙碌犹如这线条的繁复<br />烦乱的心情同样也要精心呵护</p>
				</div>
				<div class="titlebtn-div">
					<%
						UserEntity userEntity = (UserEntity)session.getAttribute("userDate"); 
						if(userEntity == null){
					%>
					<div onclick=window.open("sign.jsp","_self") class="titlebtn" style="cursor:pointer">
							<p style="cursor:pointer">进入彩色的世界</p>
					</div>
					<%}else{ %>
						<div onclick=window.open("us-index.jsp","_self") class="titlebtn" style="cursor:pointer">
								<p style="cursor:pointer">进入彩色的世界</p>
						</div>
					<% }%>
				</div>
				<section class="canvas-wrap">

					<div id="canvas" class="gradient"></div>

				</section>
			</div>

			<div class="section section-2">

				<div id="tabs4">
					<ul>
						<li>
							<a href="#tabs-1" class="a11" title="">看个电影吧!</a>
						</li>
						<li>
							<a href="#tabs-2" class="a22" title="">来听首歌吗?</a>
						</li>
						<li>
							<a href="#tabs-3" class="a33" title="">要不要读本书?</a>
						</li>
					</ul>
					<!--正文-->
					<div id="tabs_container">
						<!--内容一-->
						<div id="tabs-1">
							<div class="container demo-2">
								<div id="large-header" class="large-header">
									<canvas id="demo-canvas2" style="position:absolute; z-index: 10;">
									</canvas>
									<div class="film film1"></div>
									<div class="film film2"></div>
									<div class="film film3"></div>
									<div class="film film4"></div>
									<a onclick="window.location='FilmServlet'">
										<div class="filmbtn">
											<p>打开格子看电影</p>
										</div>
									</a>
									
								</div>
							</div>
							<!-- /container -->
						</div>
						<!--内容二-->
						<div id="tabs-2">
							<svg id="demo" viewBox="0 0 1600 600" preserveAspectRatio="xMidYMid slice">
								<defs>
									<linearGradient id="grad1" x1="0" y1="0" x2="1" y2="0" color-interpolation="sRGB">
										<stop id="stop1a" offset="0%" stop-color="#12a3b4"></stop>
										<stop id="stop1b" offset="100%" stop-color="#ff509e"></stop>
									</linearGradient>
									<linearGradient id="grad2" x1="0" y1="0" x2="1" y2="0" color-interpolation="sRGB">
										<stop id="stop2a" offset="0%" stop-color="#e3bc13"></stop>
										<stop id="stop2b" offset="100%" stop-color="#00a78f"></stop>
									</linearGradient>
								</defs>
								<rect id="rect1" x="0" y="0" width="1600" height="600" stroke="none" fill="url(#grad1)"></rect>
								<rect id="rect2" x="0" y="0" width="1600" height="600" stroke="none" fill="url(#grad2)"></rect>
							</svg>
							<div class="star1"></div>
							<div class="star2"></div>
							<div class="star3"></div>
							<div class="star4"></div>
							<div class="musicImg"></div>
							<a onclick="window.location='amusic.jsp'">
										<div class="filmbtn"style="bottom: 30%;">
											<p>打开格子听音乐</p>
										</div>
							</a>
						</div>
						<!--内容2-->
						<div id="tabs-3">
							<div id="sections-container" class="animateOptions">
								<section class="section-01">
									<div id="mov-container">
										<div class="mov-bg">
											<div class="mov-bg"></div>
											<div class="mov-bg-01"></div>
											<div class="mov-bg-02"></div>
											<div class="mov-bg-03"></div>
											<div class="mov-bg-04"></div>
											<div class="mov-bg-05"></div>
											<div class="mov-bg-06"></div>
										</div>
									</div>
									<div class="img-triangle"></div>

								</section>
								<section class="section-02"></section>
								<section class="section-03"></section>
								<section class="section-04"></section>
							</div>
							<span class="book1"></span>
							<span class="book2"></span>
							<span class="book3"></span>
							<span class="book4"></span>
							<span class="book5"></span>
							<span class="book6"></span>
							<span class="book7"></span>
							<span class="book8"></span>
							<a onclick="window.location='book-index.jsp'">
										<div class="filmbtn"style="bottom: 30%;">
											<p>打开格子看本书</p>
										</div>
							</a>
						</div>
					</div>
					<!--End tabs container-->
				</div>

			</div>

			<div class="section section-3">

				<div id="wrapper2">
					<div id="bg"></div>
					<div id="overlay"></div>
					<div id="main">

						<header id="header">
							<h1>三色格</h1>
							<p>Security Chief &nbsp;&bull;&nbsp; Cyborg &nbsp;&bull;&nbsp; Never asked for this</p>
							<nav>
								<ul>
									<li>
										<a href="#" class="" style="background-image: url(img/tel.png);width: 50px;height: 50px;background-size:cover ;"><span>保密</span></a>
									</li>
									<li>
										<a href="https://github.com/code-killerr" class="" style="background-image: url(img/github.png);width: 50px;height: 50px;background-size:cover ;"><span>GitHub</span></a>
									</li>
									<li>
										<a href="#" class="" style="background-image: url(img/weixin.png);width: 50px;height: 50px;background-size:cover ;"><span>保密</span></a>
									</li>
									<li>
										<a href="#" class="" style="background-image: url(img/weibo.png);width: 50px;height: 50px;background-size:cover ;"><span>没有</span></a>
									</li>
									<li>
										<a href="#" class="" style="background-image: url(img/email.png);width: 50px;height: 50px;background-size:cover ;"><span>保密</span></a>
									</li>
								</ul>
							</nav>
						</header>

						<footer id="footer">
							<span class="copyright">CK.tu. Design.</span>
							<a class="copyright" href="https://beian.miit.gov.cn/" target="_blank">陕ICP备2020018429号-1</a>
						</footer>
					</div>
				</div>

			</div>

			<div class="section section-4">

				<div class="title">

					<p class="tit">随便写写意思下</p>

				</div>

			</div>

			<div class="section section-5">

				<div class="title">

					<p class="tit">随便写写意思下</p>

				</div>

			</div>

		</section>

		<ul class="section-btn">

			<li class="on"></li>

			<li></li>

			<li></li>

		</ul>

		<div class="arrow">&laquo;</div>
		<script type="text/javascript" src="js/TweenMax.min.js"></script>
		<script type="text/javascript" src="js/Stats.min.js"></script>
		<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
		<script type="text/javascript" src="js/polygonizr.min.js"></script>
		<script type="text/javascript">
			$('#site-landing').polygonizr();
		</script>
		<script src="js/rAF.js"></script>
		<script src="js/demo-2.js"></script>
		<script src="js/three.min.js"></script>
		<script src="js/projector.js"></script>
		<script src="js/canvas-renderer.js"></script>
		<script src="js/3d-lines-animation.js"></script>
		<script src="js/jquery.1.7.1.min.js" type="text/javascript"></script>
		<script src="js/color.js"></script>
		<script src="http://www.jq22.com/jquery/2.1.1/jquery.min.js"></script>
		<!--页面切换js
        -->
		<script type="text/javascript">
			//此处引用：鼠标滚轮mousewheel插件

			! function(a) {
				"function" == typeof define && define.amd ? define(["jquery"], a) : "object" == typeof exports ? module.exports = a : a(jQuery)
			}(function(a) {
				function b(b) {
					var g = b || window.event,
						h = i.call(arguments, 1),
						j = 0,
						l = 0,
						m = 0,
						n = 0,
						o = 0,
						p = 0;
					if(b = a.event.fix(g), b.type = "mousewheel", "detail" in g && (m = -1 * g.detail), "wheelDelta" in g && (m = g.wheelDelta), "wheelDeltaY" in g && (m = g.wheelDeltaY), "wheelDeltaX" in g && (l = -1 * g.wheelDeltaX), "axis" in g && g.axis === g.HORIZONTAL_AXIS && (l = -1 * m, m = 0), j = 0 === m ? l : m, "deltaY" in g && (m = -1 * g.deltaY, j = m), "deltaX" in g && (l = g.deltaX, 0 === m && (j = -1 * l)), 0 !== m || 0 !== l) {
						if(1 === g.deltaMode) {
							var q = a.data(this, "mousewheel-line-height");
							j *= q, m *= q, l *= q
						} else if(2 === g.deltaMode) {
							var r = a.data(this, "mousewheel-page-height");
							j *= r, m *= r, l *= r
						}
						if(n = Math.max(Math.abs(m), Math.abs(l)), (!f || f > n) && (f = n, d(g, n) && (f /= 40)), d(g, n) && (j /= 40, l /= 40, m /= 40), j = Math[j >= 1 ? "floor" : "ceil"](j / f), l = Math[l >= 1 ? "floor" : "ceil"](l / f), m = Math[m >= 1 ? "floor" : "ceil"](m / f), k.settings.normalizeOffset && this.getBoundingClientRect) {
							var s = this.getBoundingClientRect();
							o = b.clientX - s.left, p = b.clientY - s.top
						}
						return b.deltaX = l, b.deltaY = m, b.deltaFactor = f, b.offsetX = o, b.offsetY = p, b.deltaMode = 0, h.unshift(b, j, l, m), e && clearTimeout(e), e = setTimeout(c, 200), (a.event.dispatch || a.event.handle).apply(this, h)
					}
				}

				function c() {
					f = null
				}

				function d(a, b) {
					return k.settings.adjustOldDeltas && "mousewheel" === a.type && b % 120 === 0
				}
				var e, f, g = ["wheel", "mousewheel", "DOMMouseScroll", "MozMousePixelScroll"],
					h = "onwheel" in document || document.documentMode >= 9 ? ["wheel"] : ["mousewheel", "DomMouseScroll", "MozMousePixelScroll"],
					i = Array.prototype.slice;
				if(a.event.fixHooks)
					for(var j = g.length; j;) a.event.fixHooks[g[--j]] = a.event.mouseHooks;
				var k = a.event.special.mousewheel = {
					version: "3.1.12",
					setup: function() {
						if(this.addEventListener)
							for(var c = h.length; c;) this.addEventListener(h[--c], b, !1);
						else this.onmousewheel = b;
						a.data(this, "mousewheel-line-height", k.getLineHeight(this)), a.data(this, "mousewheel-page-height", k.getPageHeight(this))
					},
					teardown: function() {
						if(this.removeEventListener)
							for(var c = h.length; c;) this.removeEventListener(h[--c], b, !1);
						else this.onmousewheel = null;
						a.removeData(this, "mousewheel-line-height"), a.removeData(this, "mousewheel-page-height")
					},
					getLineHeight: function(b) {
						var c = a(b),
							d = c["offsetParent" in a.fn ? "offsetParent" : "parent"]();
						return d.length || (d = a("body")), parseInt(d.css("fontSize"), 10) || parseInt(c.css("fontSize"), 10) || 16
					},
					getPageHeight: function(b) {
						return a(b).height()
					},
					settings: {
						adjustOldDeltas: !0,
						normalizeOffset: !0
					}
				};
				a.fn.extend({
					mousewheel: function(a) {
						return a ? this.bind("mousewheel", a) : this.trigger("mousewheel")
					},
					unmousewheel: function(a) {
						return this.unbind("mousewheel", a)
					}
				})
			});

			$(function() {

				var i = 0;

				var $btn = $('.section-btn li'),

					$wrap = $('.section-wrap'),

					$arrow = $('.arrow');

				/*当前页面赋值*/

				function up() {
					i++;
					if(i == $btn.length) {
						i = 0
					};
				}

				function down() {
					i--;
					if(i < 0) {
						i = $btn.length - 1
					};
				}

				/*页面滑动*/

				function run() {

					$btn.eq(i).addClass('on').siblings().removeClass('on');

					$wrap.attr("class", "section-wrap").addClass(function() {
						return "put-section-" + i;
					}).find('.section').eq(i).find('.title').addClass('active');

				};

				/*右侧按钮点击*/

				$btn.each(function(index) {

					$(this).click(function() {

						i = index;

						run();

					})

				});

				/*翻页按钮点击*/

				$arrow.one('click', go);

				function go() {

					up();
					run();

					setTimeout(function() {
						$arrow.one('click', go)
					}, 1000)

				};

				/*响应鼠标*/

				$wrap.one('mousewheel', mouse_);

				function mouse_(event) {

					if(event.deltaY < 0) {
						up()
					} else {
						down()
					}

					run();

					setTimeout(function() {
						$wrap.one('mousewheel', mouse_)
					}, 1000)

				};

				/*响应键盘上下键*/

				$(document).one('keydown', k);

				function k(event) {

					var e = event || window.event;

					var key = e.keyCode || e.which || e.charCode;

					switch(key) {

						case 38:
							down();
							run();

							break;

						case 40:
							up();
							run();

							break;

					};

					setTimeout(function() {
						$(document).one('keydown', k)
					}, 1000);

				}

			});
		</script>
		<!--tabs-2 js
        -->

		<script>
			//////////////////////////////
			// Demo Functions
			//////////////////////////////

			function init(showStats) {
				// stats
				if(showStats) {
					var stats = new Stats();
					stats.domElement.style.position = 'absolute';
					stats.domElement.style.left = '0';
					stats.domElement.style.top = '0';
					document.body.appendChild(stats.domElement);
					requestAnimationFrame(function updateStats() {
						stats.update();
						requestAnimationFrame(updateStats);
					});
				}

				// init
				var svg = document.getElementById('demo');
				tesselation.setup(svg);
				gradients.setup();

				var lastTransitionAt, transitionDelay = 5500,
					transitionDuration = 3000;

				function playNextTransition() {
					tesselation.next(transitionDuration);
					gradients.next(transitionDuration);
				};

				function tick(time) {
					if(!lastTransitionAt || time - lastTransitionAt > transitionDelay) {
						lastTransitionAt = time;
						playNextTransition();
					}
					window.requestAnimationFrame(tick);
				}
				window.requestAnimationFrame(tick);
			}

			//////////////////////////////
			// Delaunay Triangulation
			//////////////////////////////

			var calcDelaunayTriangulation = (function() {
				var EPSILON = 1.0 / 1048576.0;

				function getSuperT(vertices) {
					var xMin = Number.POSITIVE_INFINITY,
						yMin = Number.POSITIVE_INFINITY,
						xMax = Number.NEGATIVE_INFINITY,
						yMax = Number.NEGATIVE_INFINITY,
						i, xDiff, yDiff, maxDiff, xCenter, yCenter;
					for(i = vertices.length; i--;) {
						if(vertices[i][0] < xMin) xMin = vertices[i][0];
						if(vertices[i][0] > xMax) xMax = vertices[i][0];
						if(vertices[i][1] < yMin) yMin = vertices[i][1];
						if(vertices[i][1] > yMax) yMax = vertices[i][1];
					}
					xDiff = xMax - xMin;
					yDiff = yMax - yMin;
					maxDiff = Math.max(xDiff, yDiff);
					xCenter = xMin + xDiff * 0.5;
					yCenter = yMin + yDiff * 0.5;
					return [
						[xCenter - 20 * maxDiff, yCenter - maxDiff],
						[xCenter, yCenter + 20 * maxDiff],
						[xCenter + 20 * maxDiff, yCenter - maxDiff]
					];
				}

				function circumcircle(vertices, i, j, k) {
					var xI = vertices[i][0],
						yI = vertices[i][1],
						xJ = vertices[j][0],
						yJ = vertices[j][1],
						xK = vertices[k][0],
						yK = vertices[k][1],
						yDiffIJ = Math.abs(yI - yJ),
						yDiffJK = Math.abs(yJ - yK),
						xCenter, yCenter, m1, m2, xMidIJ, xMidJK, yMidIJ, yMidJK, xDiff, yDiff;
					// bail condition
					if(yDiffIJ < EPSILON && yDiffJK < EPSILON)
						throw new Error("Can't get circumcircle since all 3 points are y-aligned");
					// calc circumcircle center x/y, radius
					m1 = -((xJ - xI) / (yJ - yI));
					m2 = -((xK - xJ) / (yK - yJ));
					xMidIJ = (xI + xJ) / 2.0;
					xMidJK = (xJ + xK) / 2.0;
					yMidIJ = (yI + yJ) / 2.0;
					yMidJK = (yJ + yK) / 2.0;
					xCenter = (yDiffIJ < EPSILON) ? xMidIJ :
						(yDiffJK < EPSILON) ? xMidJK :
						(m1 * xMidIJ - m2 * xMidJK + yMidJK - yMidIJ) / (m1 - m2);
					yCenter = (yDiffIJ > yDiffJK) ?
						m1 * (xCenter - xMidIJ) + yMidIJ :
						m2 * (xCenter - xMidJK) + yMidJK;
					xDiff = xJ - xCenter;
					yDiff = yJ - yCenter;
					// return
					return {
						i: i,
						j: j,
						k: k,
						x: xCenter,
						y: yCenter,
						r: xDiff * xDiff + yDiff * yDiff
					};
				}

				function dedupeEdges(edges) {
					var i, j, a, b, m, n;
					for(j = edges.length; j;) {
						b = edges[--j];
						a = edges[--j];
						for(i = j; i;) {
							n = edges[--i];
							m = edges[--i];
							if((a === m && b === n) || (a === n && b === m)) {
								edges.splice(j, 2);
								edges.splice(i, 2);
								break;
							}
						}
					}
				}
				return function(vertices) {
					var n = vertices.length,
						i, j, indices, st, candidates, locked, edges, dx, dy, a, b, c;
					// bail if too few / too many verts
					if(n < 3 || n > 2000)
						return [];
					// copy verts and sort indices by x-position
					vertices = vertices.slice(0);
					indices = new Array(n);
					for(i = n; i--;)
						indices[i] = i;
					indices.sort(function(i, j) {
						return vertices[j][0] - vertices[i][0];
					});
					// supertriangle
					st = getSuperT(vertices);
					vertices.push(st[0], st[1], st[2]);
					// init candidates/locked tris list
					candidates = [circumcircle(vertices, n + 0, n + 1, n + 2)];
					locked = [];
					edges = [];
					// scan left to right
					for(i = indices.length; i--; edges.length = 0) {
						c = indices[i];
						// check candidates tris against point
						for(j = candidates.length; j--;) {
							// lock tri if point to right of circumcirc
							dx = vertices[c][0] - candidates[j].x;
							if(dx > 0.0 && dx * dx > candidates[j].r) {
								locked.push(candidates[j]);
								candidates.splice(j, 1);
								continue;
							}
							// point outside circumcirc = leave candidates
							dy = vertices[c][1] - candidates[j].y;
							if(dx * dx + dy * dy - candidates[j].r > EPSILON)
								continue;
							// point inside circumcirc = break apart, save edges
							edges.push(
								candidates[j].i, candidates[j].j,
								candidates[j].j, candidates[j].k,
								candidates[j].k, candidates[j].i
							);
							candidates.splice(j, 1);
						}
						// new candidates from broken edges
						dedupeEdges(edges);
						for(j = edges.length; j;) {
							b = edges[--j];
							a = edges[--j];
							candidates.push(circumcircle(vertices, a, b, c));
						}
					}
					// close candidates tris, remove tris touching supertri verts
					for(i = candidates.length; i--;)
						locked.push(candidates[i]);
					candidates.length = 0;
					for(i = locked.length; i--;)
						if(locked[i].i < n && locked[i].j < n && locked[i].k < n)
							candidates.push(locked[i].i, locked[i].j, locked[i].k);
					// done
					return candidates;
				};
			})();

			var tesselation = (function() {
				var svg, svgW, svgH, prevGroup;

				function createRandomTesselation() {
					var wW = window.innerWidth;
					var wH = window.innerHeight;

					var gridSpacing = 250,
						scatterAmount = 0.75;
					var gridSize, i, x, y;

					if(wW / wH > svgW / svgH) { // window wider than svg = use width for gridSize
						gridSize = gridSpacing * svgW / wW;
					} else { // window taller than svg = use height for gridSize
						gridSize = gridSpacing * svgH / wH;
					}

					var vertices = [];
					var xOffset = (svgW % gridSize) / 2,
						yOffset = (svgH % gridSize) / 2;
					for(x = Math.floor(svgW / gridSize) + 1; x >= -1; x--) {
						for(y = Math.floor(svgH / gridSize) + 1; y >= -1; y--) {
							vertices.push(
								[
									xOffset + gridSize * (x + scatterAmount * (Math.random() - 0.5)),
									yOffset + gridSize * (y + scatterAmount * (Math.random() - 0.5))
								]
							);
						}
					}

					var triangles = calcDelaunayTriangulation(vertices);

					var group = document.createElementNS('http://www.w3.org/2000/svg', 'g');
					var polygon;
					for(i = triangles.length; i;) {
						polygon = document.createElementNS('http://www.w3.org/2000/svg', 'polygon');
						polygon.setAttribute('points',
							vertices[triangles[--i]][0] + ',' + vertices[triangles[i]][1] + ' ' +
							vertices[triangles[--i]][0] + ',' + vertices[triangles[i]][1] + ' ' +
							vertices[triangles[--i]][0] + ',' + vertices[triangles[i]][1]
						);
						group.appendChild(polygon);
					}

					return group;
				}

				return {
					setup: function(svgElement) {
						svg = svgElement;
						var vb = svg.getAttribute('viewBox').split(/\D/g);
						svgW = vb[2];
						svgH = vb[3];
					},
					next: function(t) {
						var toRemove, i, n;
						t /= 1000;

						if(prevGroup && prevGroup.children && prevGroup.children.length) {
							toRemove = prevGroup;
							n = toRemove.children.length;
							for(i = n; i--;) {
								TweenMax.to(toRemove.children[i], t * 0.4, {
									opacity: 0,
									delay: t * (0.3 * i / n)
								});
							}
							TweenMax.delayedCall(t * (0.7 + 0.05), function(group) {
								svg.removeChild(group);
							}, [toRemove], this);
						}
						var g = createRandomTesselation();
						n = g.children.length;
						for(i = n; i--;) {
							TweenMax.fromTo(g.children[i], t * 0.4, {
								opacity: 0
							}, {
								opacity: 0.3 + 0.25 * Math.random(),
								delay: t * (0.3 * i / n + 0.3),
								ease: Back.easeOut
							});
						}
						svg.appendChild(g);
						prevGroup = g;
					}
				}
			})();

			//////////////////////////////
			// Gradients
			//////////////////////////////

			var gradients = (function() {
				var grad1, grad2, showingGrad1;

				// using colors from IBM Design Colors this time
				var colors = [ // 14 colors - use 3-5 span
					'#3c6df0', // ultramarine50
					'#12a3b4', // aqua40
					'#00a78f', // teal40
					'#00aa5e', // green40
					'#81b532', // lime30
					'#e3bc13', // yellow20
					'#ffb000', // gold20
					'#fe8500', // orange30
					'#fe6100', // peach40
					'#e62325', // red50
					'#dc267f', // magenta50
					'#c22dd5', // purple50
					'#9753e1', // violet50
					'#5a3ec8' // indigo60
				];

				function assignRandomColors(gradObj) {
					var rA = Math.floor(colors.length * Math.random());
					var rB = Math.floor(Math.random() * 3) + 3; // [3 - 5]
					rB = (rA + (rB * (Math.random() < 0.5 ? -1 : 1)) + colors.length) % colors.length;
					gradObj.stopA.setAttribute('stop-color', colors[rA]);
					gradObj.stopB.setAttribute('stop-color', colors[rB]);
				}

				return {
					setup: function() {
						showingGrad1 = false;
						grad1 = {
							stopA: document.getElementById('stop1a'),
							stopB: document.getElementById('stop1b'),
							rect: document.getElementById('rect1')
						};
						grad2 = {
							stopA: document.getElementById('stop2a'),
							stopB: document.getElementById('stop2b'),
							rect: document.getElementById('rect2')
						};
						grad1.rect.style.opacity = 0;
						grad2.rect.style.opacity = 0;
					},
					next: function(t) {
						t /= 1000;

						var show, hide;
						if(showingGrad1) {
							hide = grad1;
							show = grad2;
						} else {
							hide = grad2;
							show = grad1;
						}
						showingGrad1 = !showingGrad1;

						TweenMax.to(hide.rect, 0.55 * t, {
							opacity: 0,
							delay: 0.2 * t,
							ease: Sine.easeOut
						});
						assignRandomColors(show);
						TweenMax.to(show.rect, 0.65 * t, {
							opacity: 1,
							ease: Sine.easeIn
						});
					}
				};
			})();

			//////////////////////////////
			// Start
			//////////////////////////////

			init();
		</script>
		<!--tabs3 js-->
		<script src=" https://sqimg.qq.com/qq_product_operations/jslib/swfobject.js"></script>
		<script src="js/bgmove.js"></script>
	</body>


</html>