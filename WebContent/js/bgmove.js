$(function() {
	function e() {
		(window.ActiveXObject || "ActiveXObject" in window) && $("body").addClass("ie")
	}

	function n(e, n) {
		"function" == typeof pgvSendClick && pgvSendClick({
			virtualDomain: n || "im.qq.com",
			hottag: e
		})
	}

	function i() {
		var e, n = document.createElement("div"),
			i = {
				transition: "transitionend",
				OTransition: "oTransitionEnd",
				MozTransition: "transitionend",
				WebkitTransition: "webkitTransitionEnd"
			};
		for(e in i)
			if(void 0 !== n.style[e]) return i[e]
	}

	function t(e) {
		var n, i = function(e, n) {
				setTimeout(function() {
					e.addClass("imageMoving"), setTimeout(function() {
						e.removeClass("imageMoving")
					}, 15e3)
				}, n)
			},
			t = [{
				el: $(".mov-bg-03"),
				delayTime: 4e3
			}, {
				el: $(".mov-bg-04"),
				delayTime: 8e3
			}, {
				el: $(".mov-bg-05"),
				delayTime: 12e3
			}, {
				el: $(".mov-bg-06"),
				delayTime: 16e3
			}];
		for(n in t) i(t[n].el, t[n].delayTime);
		setInterval(function() {
			for(n in t) i(t[n].el, t[n].delayTime)
		}, 26e3)
	}
	e(), "function" == typeof pgvSendClick && pgvMain(), n("pcqq.pv"), $(".download").click(function() {
		n("pcqq.btn_download")
	}), $(".apply_qq").click(function() {
		n("pcqq.btn_apply")
	}), $(".qq_index").click(function() {
		n("pcqq.btn_index")
	}), $("#viewOnline").click(function() {
		n("pcqq.btn_viewOnline")
	}), $("#logo").click(function() {
		n("pcqq.btn_logo")
	});
	var o = /^https/.test(window.location) ? "https://im.qq.com/online/flash/ht/fla_https.swf" : "http://im.qq.com/online/flash/ht/fla_http.swf";
	swfobject.embedSWF(o, "flashBox", "910", "700", "9.0.0", "expressInstall.swf"), $("#viewOnline").click(function(e) {
		e.preventDefault(), $("#flashDiv").show(), $(".overlay").show(), $(".overlay").css({
			height: $(document).height()
		})
	}), $("#flashClose").click(function(e) {
		e.preventDefault(), $("#flashDiv").hide(), $(".overlay").hide()
	}), $.ajax({
		type: "GET",
		url: "https://cgi.im.qq.com/data/1min_city.dat",
		dataType: "json",
		success: function(e) {
			try {
				e && 0 == e.code && "success" == e.msg ? $("#max_online").text(e.data.count.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,")) : BJ_REPORT.report("get_online_error:" + JSON.stringify(e))
			} catch(n) {
				BJ_REPORT.report("ajax_success_error:" + JSON.stringify(e))
			}
		}
	});
	var s, a = (i(), {
			params: {
				video: $(".login-video"),
				loginInterface: $(".img-loginInterface"),
				"interface": $(".img-aioInterface"),
				cutLine: $(".line"),
				title: $(".section-01").find(".message")
			},
			loopInterface: function(e) {
				var n = this,
					i = n.params;
				setTimeout(function() {
					i.cutLine.addClass("show-line"), setTimeout(function() {
						i["interface"].removeClass("backgroundPositionReset"), setTimeout(function() {
							i.video[0].currentTime = 0, i.loginInterface.removeClass("backHide"), setTimeout(function() {
								e()
							}, 700)
						}, 700)
					}, 300)
				}, 3e3)
			},
			loopAio: function() {
				var e = this,
					n = e.params;
				n.cutLine.removeClass("show-line"), setTimeout(function() {
					n.cutLine.addClass("show-line"), setTimeout(function() {
						n.loginInterface.addClass("backHide"), setTimeout(function() {
							n.cutLine.removeClass("show-line"), setTimeout(function() {
								n["interface"].addClass("backgroundPositionReset"), e.loopInterface()
							}, 700)
						}, 700)
					}, 300)
				}, 3e3)
			},
			loopAll: function() {
				var e, n, i = this,
					t = i.params;
				setInterval(function() {
					setTimeout(function() {
						t.cutLine.addClass("show-line"), setTimeout(function() {
							e = t["interface"].hasClass("backgroundPositionReset"), n = t.loginInterface.hasClass("backHide"), e ? t["interface"].removeClass("backgroundPositionReset") : t.loginInterface.addClass("backHide"), setTimeout(function() {
								n ? (t.video[0].currentTime = 0, t.loginInterface.removeClass("backHide")) : t["interface"].addClass("backgroundPositionReset"), setTimeout(function() {
									t.cutLine.removeClass("show-line")
								}, 700)
							}, 700)
						}, 300)
					}, 3e3)
				}, 4700)
			},
			showing: function() {
				var e = this,
					n = e.params;
				n.cutLine.addClass("show-line"), setTimeout(function() {
					n.loginInterface.addClass("backgroundPositionReset"), n.title.addClass("positionReset"), setTimeout(function() {
						n.cutLine.removeClass("show-line"), setTimeout(function() {
							n.cutLine.addClass("show-line"), setTimeout(function() {
								n.loginInterface.addClass("backHide"), setTimeout(function() {
									n["interface"].addClass("backgroundPositionReset"), setTimeout(function() {
										n.cutLine.removeClass("show-line")
									}, 700)
								}, 700)
							}, 300)
						}, 1500)
					}, 750)
				}, 300), e.loopAll()
			},
			init: function() {
				this.showing()
			}
		}),
		c = {
			params: {
				len: $(".theme-img").length,
				isShow: 0,
				isHover: 0,
				hoverIndex: "",
				act_index: ""
			},
			showSkin: function(e) {
				$(".theme-img").removeClass("fadeOut").removeClass("fadeIn"), $(".theme-img").eq(e).addClass("fadeIn"), this.params.isShow = 1
			},
			hideSkin: function() {
				var e = $(".theme-container").find(".fadeIn");
				e.index();
				e.addClass("fadeOut"), this.params.isShow = 0
			},
			playOnce: function(e, n) {
				var i = this,
					t = $(".defaultText"),
					o = $(".skinText");
				0 == n ? (o.removeClass("act"), setTimeout(function() {
					t.addClass("act")
				}, 750)) : (t.removeClass("act"), setTimeout(function() {
					o.addClass("act")
				}, 750)), i.hideSkin(), $(".theme-side li").eq(e).children("i").removeClass("act"), setTimeout(function() {
					i.showSkin(n)
				}, 750)
			},
			init: function() {
				function e() {
					n.params.act_index = $(".theme-container").find(".fadeIn").index(), i.act_index < i.len - 1 ? (n.playOnce(i.act_index, i.act_index + 1), $(".theme-side li").eq(i.act_index + 1).children("i").addClass("act")) : (n.playOnce(i.len - 1, 0), $(".theme-side li").eq(0).children("i").addClass("act"))
				}
				var n = this,
					i = n.params;
				n.showSkin(0), $(".defaultText").addClass("act"), $(".theme-side li").eq(0).children("i").addClass("act"), setTimeout(function() {
					$(".theme-side").css("opacity", "1")
				}, 750);
				setInterval(e, 3e3)
			}
		},
		l = function() {
			var e = {
					startIndex: 1
				},
				n = {
					faceContainer: $(".face-container"),
					face: $(".face01")
				},
				i = function(e) {
					n.faceContainer.removeClass("act"), setTimeout(function() {
						n.faceContainer.eq(e).addClass("act")
					}, 1400)
				},
				t = function() {
					var t, o = n.faceContainer.length;
					setInterval(function() {
						t = $(".friendNet").find(".act").index(), t++, e.startIndex++, i(t < o ? t : 0)
					}, 3e3)
				},
				o = function() {
					$(".ring-list").addClass("act"), setTimeout(function() {
						n.face.addClass("act"), t()
					}, 1400)
				};
			o()
		},
		d = ($(window).height(), $(".section-02").offset().top / 2),
		f = $(".section-03").offset().top / 1.6,
		r = $(".section-04").offset().top / 1.4,
		u = {
			s2: 0,
			s3: 0,
			s4: 0
		};
	t(), a.init(), $(window).scroll(function() {
		s = $(window).scrollTop(), s > d && !u.s2 ? (u.s2 = 1, c.init()) : s > f && !u.s3 ? (u.s3 = 1, $(".section-03").addClass("act")) : s > r && !u.s4 && (u.s4 = 1, $(".section-04").find(".message").addClass("act"), l())
	})
})