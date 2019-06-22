<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>jQuery响应式全屏3D旋转查看图片特效</title>

<link rel="stylesheet" type="text/css" href="img/lklk/demo.css" />

</head>
<body>
<!-- coidea:loader START -->
<div class="loader">
  <div class="lds-ripple">
	<div></div>
	<div></div>
  </div>
</div>
<!-- coidea:loader END -->


<!-- coidea:slideshow:navigation START -->
<nav id="nav">
  <button id="prev" class="nav-item" data-increment="-1">
	<img src="img/左箭头.png" alt="prev" />      </button>
  <button id="next" class="nav-item" data-increment="1">
	<img src="img/右箭头.png" alt="next" />      </button>
</nav>
<!-- coidea:slideshow:navigation END -->

<!-- coidea:slideshow START -->
<section class="coidea-3d-carousel">
  <div class="stage">
	
	<!-- coidea:slideshow:item START -->
	<div class="item">
	  <div class="bcg">
	  	<video src="videos/复仇者联盟.mp4" controls="controls"autoplay="autoplay"loop="loop"width="100%"height="100%"style="object-fit: fill;"></video>
	  </div>
	  <div class="content">
		<div class="description">
		  <p class="description-target">2102 - 2019</p>
		</div>
		<div class="headline">
		  <h2 class="headline-target" >复仇者联盟</h2>
		</div>
		<div class="discover-more">
		  <a href="#" class="discover-more-target">Discover More</a>            </div>
	  </div>
	</div>
	<!-- coidea:slideshow:item END -->

	<!-- coidea:slideshow:item START -->
	<div class="item">
	  <div class="bcg" ></div>
	  <video src="videos/速度与激情.mp4" controls="controls"autoplay="autoplay"loop="loop"width="100%"height="100%"style="object-fit: fill;"></video>
	  <div class="content">
		<div class="description">
		  <p class="description-target">2001 - 2019</p>
		</div>
		<div class="headline">
		  <h2 class="headline-target">速度与激情</h2>
		</div>
		<div class="discover-more">
		  <a href="#" class="discover-more-target">Discover More</a>            </div>
	  </div>
	</div>
	<!-- coidea:slideshow:item END -->

	<!-- coidea:slideshow:item START -->
	<div class="item">
	  <div class="bcg">
	  	<video src="videos/变形金刚.mp4" controls="controls"autoplay="autoplay"loop="loop"width="100%"height="100%"style="object-fit: fill;"></video>
	  </div>
	  <div class="content">
		<div class="description">
		  <p class="description-target">2007 - 2019</p>
		</div>
		<div class="headline">
		  <h2 class="headline-target">变形金刚</h2>
		</div>
		<div class="discover-more">
		  <a href="#" class="discover-more-target">Discover More</a>            </div>
	  </div>
	</div>
	<!-- coidea:slideshow:item END -->

  </div>
</section>
<!-- coidea:slideshow END -->

<script src="img/lklk/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="img/lklk/TweenMax.min.js"></script>
<script src="img/lklk/imagesloaded.pkgd.min.js"></script>
<script src="img/lklk/demo.js"></script>

</body>
</html>