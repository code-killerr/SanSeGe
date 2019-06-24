window.onload = function(){
	var Fadetext = {};
	Fadetext.arow 		= 0;
	Fadetext.Flag 		= false;
	Fadetext.viewWidth  = document.body.clientWidth;
	Fadetext.viewHeight = (window.innerHeight) ? window.innerHeight : document.body.clientHeight;
	Fadetext.offsetdom  = [];
	Fadetext.offsetinx  = [];
	Fadetext.init = function(option){
		this.option = $.extend({},option);
		this.className = this.option.className || '';
		this.speed	   = this.option.speed || '';
		this.bindCarousely();
	}

	Fadetext.bindCarousely = function(){
		var $progress = $('.swiper-pagination-two');
		var $img	    = $('.slipe-box').find('.swiper-slide');
		var $k	 		  = $('.section-img').find('img');
		var mySwiper  = new Swiper('.slider-two',{
			loop : true,
			autoplay : 5000,
			speed:800,
			prevButton:'.slipe-left',
			nextButton:'.slipe-right',
			pagination : '.swiper-pagination-two',
			paginationClickable :true,
			autoplayDisableOnInteraction : false,
			paginationBulletRender: function (swiper, index, className) {
      			return '<div class="' + className + '"><p></p></div>';
  		},
			onTransitionEnd: function(swiper){
				if(swiper.activeIndex == 1){
					setTimeout(function() {
						$progress.find('div').eq(0).find('p').addClass('login');
					}, 1);
				}
				$progress.find('p').removeClass('login');
				$progress.find('div').eq(swiper.activeIndex == swiper.imagesLoaded - 1 ? 0 : swiper.activeIndex - 1).find('p').addClass('login');
				
      },
			onSlideChangeStart: function(swiper){
      	$k.eq(swiper.activeIndex == swiper.imagesLoaded - 1 ? 0 : swiper.activeIndex - 1).css('opacity','1').siblings().css('opacity','0');
    	}
		})
		$(document).on('mousemove mouseout',".slipe-box .swiper-wrapper",function(e) {
			if(e.type === 'mousemove'){
				(Fadetext.viewWidth / 2 > e.pageX) ? $('.slipe-left').addClass('arowshow').siblings('.slipe-right').removeClass('arowshow') : $('.slipe-right').addClass('arowshow').siblings('.slipe-left').removeClass('arowshow');
			}else{
				$('.slipe-left,.slipe-right').removeClass('arowshow');
			}
    })
		
		this.bindScroll();
}
	Fadetext.bindScroll = function(){
		var a = c = d = e = 0,
			$flag = $index = 0,
			node = (!!window.ActiveXObject || "ActiveXObject" in window) ? "body" : document;
			$('.animate-text').each(function(){
				var a = 'a' + parseInt($(this).offset().top);
					var o = {
						index : a.substr(1),
						doma  : $(this)
					}
					Fadetext.offsetinx.push(o);
			})
		
			Fadetext.offsetdom[0] = Fadetext.offsetinx[0];
			for(var i = 1 ; i < Fadetext.offsetinx.length; i++){
				var f = true;
				for(var j = 0 ; j < Fadetext.offsetdom.length; j++){
					if(Fadetext.offsetinx[i].index == Fadetext.offsetdom[j].index){
						f = false;
						Fadetext.offsetdom[j].doma.push(Fadetext.offsetinx[i].doma);
					}
				}
				if(f){
					var o = {
						index : Fadetext.offsetinx[i].index,
						doma  : [Fadetext.offsetinx[i].doma]
					}
					Fadetext.offsetdom.push(o);
				}
				f = true;
			}
			Fadetext.offsetinx = [];
			$('.animate-img').each(function(){
				var a = 'a' + parseInt($(this).offset().top);
					var o = {
						index : a.substr(1),
						doma  : $(this)
					}
					Fadetext.offsetinx.push(o);
			})
			window.scroll(0,$(document).scrollTop() + 1);
		$(window).resize(function() {
			window.location.reload();
		});

		var beforeScrollTop = document.body.scrollTop,
        fn = fn || function() {},
				fx = true;
		$(window).scroll(function (){
			var b = $(window).scrollTop() + $(window).height(); 
			var p = $(this).scrollTop();
			var afterScrollTop = document.body.scrollTop,
            delta = afterScrollTop - beforeScrollTop;
        fx = ( delta > 0 ? false : true );
        beforeScrollTop = afterScrollTop;
			for(var i = 0 ; i < Fadetext.offsetdom.length; i++ ){
				var vala = Fadetext.offsetdom[i];
				//到元素位置显示动画
				if ( (Fadetext.viewHeight + p) >= parseInt(vala.index)) {
					var valb = vala.doma;
					for(var j = 0 ; j < vala.doma.length ; j++){
						if($(vala.doma[j]).attr('data-lazy') === 'lazy'){
							if(Fadetext.Flag && (Fadetext.viewHeight + p) >= parseInt(vala.index) + 3070){
								$(vala.doma[j]).addClass('animate-position');
							}
							else if (!Fadetext.Flag){
								$(vala.doma[j]).addClass('animate-position');
							}
						}else{
							$(vala.doma[j]).addClass('animate-position');
						}
						
						//到位置数字滚动效果
						if($(vala.doma[j]).attr('data-type') === 'num'){
							if(Fadetext.Flag && (Fadetext.viewHeight + p) >= parseInt(vala.index) + 3070){
								Fadetext.numRun1.resetData('1000000');
								Fadetext.numRun2.resetData('15000');
								Fadetext.numRun3.resetData('1000');
								Fadetext.numRun4.resetData('100');
							}
							else if (!Fadetext.Flag){
								Fadetext.numRun1.resetData('1000000');
								Fadetext.numRun2.resetData('15000');
								Fadetext.numRun3.resetData('1000');
								Fadetext.numRun4.resetData('100');
							}
						}
					}
				}
								
			}
			
			for(var j = 0 ; j < Fadetext.offsetinx.length; j++){
				var vala = Fadetext.offsetinx[j];
				//图片视差滚动 1
				if(b > parseInt(vala.index) + 900 && $(vala.doma[j]).attr('data-type') === 'one'){
					if(p < parseInt(vala.index) + 1000 && a < 40){
						if(this.arow){
							a -= 0.2;
						}else{
							a += 0.2;
						}
					}else if(p < parseInt(vala.index) + 400 && a > 40){
						a -= 0.3;
					}
					else{
						a = 0;
					}
					$(vala.doma[j]).css("transform", "translate3d(0%," + a + "% , 0)");
				}

				//图片视差滚动 2
				if (b > 2235 && Fadetext.Flag) {
					if(p < 2400 && Math.abs(d) < 150){
						if(fx){
							d += 0.03;
						}else{
							d -= 0.03;
						}
					}
					else{
						d = 0;
					}
					// console.log(d);
					$('.animate-img[data-type="two"]').css("transform", "translate3d(0%," + d + "px , 0)");
				}

				//图片视差滚动 3
				if (p > 3853 && Fadetext.Flag) {
					if(p < 4200 && Math.abs(c) < 8){
						if(this.arow){
							c += 0.007;
						}else{
							c -= 0.007;
						}
					}else if(p < 4200 && Math.abs(c) < 8){
						c += 0.007;
					}
					else{
						c = 0;
					}
					$('.animate-img[data-type="three"]').css("transform", "translate3d(0%," + c + "% , 0)");
				}
			}
		});
	}

     //初始化
     var init = function(){};

 	Fadetext.init();
}
