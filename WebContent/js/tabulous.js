/*!
 * strength.js
 * Original author: @aaronlumsden
 * Further changes, comments: @aaronlumsden
 * Licensed under the MIT license
 */
;(function ( $, window, document, undefined ) {

    var pluginName = "tabulous",
        defaults = {
            effect: 'scale'
        };

       // $('<style>body { background-color: red; color: white; }</style>').appendTo('head');

    function Plugin( element, options ) {
        this.element = element;
        this.$elem = $(this.element);
        this.options = $.extend( {}, defaults, options );
        this._defaults = defaults;
        this._name = pluginName;
        this.init();
    }

    Plugin.prototype = {

        init: function() {

            var links = this.$elem.find('a');
            var firstchild = this.$elem.find('li:first-child').find('a');
            var lastchild = this.$elem.find('li:last-child').after('<span class="tabulousclear"></span>');

			 if (this.options.effect == 'flip') {
                 this.$elem.find('#tabs-2').addClass('hideflip');
                 this.$elem.find('#tabs-3').addClass('hideflip');
            }

            var firstdiv = this.$elem.find('#tabs_container');
            var firstdivheight = firstdiv.find('div:first').height();

            var alldivs = this.$elem.find('div:first').find('div');

            this.$elem.find('#tabs-1').css({'position': 'absolute'});
            this.$elem.find('#tabs-2').css({'position': 'absolute'});
            this.$elem.find('#tabs-3').css({'position': 'absolute'});

            firstdiv.css('height',firstdivheight+'px');

            firstchild.addClass('tabulous_active');

            links.bind('click', {myOptions: this.options}, function(e) {
                e.preventDefault();

                var $options = e.data.myOptions;
                var effect = $options.effect;

                var mythis = $(this);
                var thisform = mythis.parent().parent().parent();
                var thislink = mythis.attr('href');
                firstdiv.addClass('transition');
                if(this.className == "a11"){
                	links.removeClass('tabulous_active1');
                	links.removeClass('tabulous_active2');
                	mythis.addClass('tabulous_active');
                }
                else if(this.className == "a22"){
                	links.removeClass('tabulous_active');
                	links.removeClass('tabulous_active2');
                	mythis.addClass('tabulous_active1');
                }
                else if(this.className == "a33"){
                	links.removeClass('tabulous_active');
                	links.removeClass('tabulous_active1');
                	mythis.addClass('tabulous_active2');
                }
                document.getElementsByClassName("")
                thisdivwidth = thisform.find('div'+thislink).height();

				if (effect == 'flip') {
                    alldivs.removeClass('showflip').addClass('make_transist').addClass('hideflip');
                    thisform.find('div'+thislink).addClass('make_transist').addClass('showflip').removeClass('hideflip');
                    thisform.find('div'+thislink).find('div').addClass('make_transist').addClass('showflip').removeClass('hideflip');
                }


                firstdiv.css('height',thisdivwidth+'px');

                


            });

           


         
            
        },

        yourOtherFunction: function(el, options) {
            // some logic
        }
    };

    // A really lightweight plugin wrapper around the constructor,
    // preventing against multiple instantiations
    $.fn[pluginName] = function ( options ) {
        return this.each(function () {
            new Plugin( this, options );
        });
    };

})( jQuery, window, document );


