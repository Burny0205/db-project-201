var salon = salon || {};
var salon = {
	debugMode : true,
};

salon.preloadimages = function(el, count) {
	// slideshow img naming convention pic{#}.jpg
	// default size 500x500
	// ideal solution would be to use filereader populate a json object and traverse over the object
	var i, imgCount = count, path = "../Images/slideshow/", imgprefix = "pic", ext = '.jpg';
	for (i = 1; i <= imgCount; i++) {
    	$('<img src="' + path +  imgprefix + i + ext + '" width="500" height="500" alt="Slide ' + i + '"/>').appendTo(el);
    }	
};

salon.initslideshow = function(el) {
	$(el).slides({
	    preload: true,
	    preloadImage: '../Images/sprites/loading.gif',
	    play: 5000,
	    pause: 2500,
	    effect: 'fade',
	    hoverPause: true,
		randomize : true
	});
};

salon.mediaplayer = function(el) {
	// might be customized later to support playlist etc..	
	flowplayer(
	    el,
	    "../Plugins/flowplayer/flowplayer-3.2.10.swf", {
		    plugins: {
		        controls: {
		            // change the default controlbar to modern
		            url: "../Plugins/flowplayer/flowplayer.controls-3.2.10.swf",
		 
		            // customize the appearance to make the control bar transparent
		            backgroundColor: "transparent",
		            backgroundGradient: "none",
		            sliderColor: '#FFFFFF',
		            sliderBorder: '1.5px solid rgba(160,160,160,0.7)',
		            volumeSliderColor: '#FFFFFF',
		            volumeBorder: '1.5px solid rgba(160,160,160,0.7)',
		 
		            timeColor: '#ffffff',
		            durationColor: '#535353',
		 
		            tooltipColor: 'rgba(255, 255, 255, 0.7)',
		            tooltipTextColor: '#000000'
		 
		        }
		    },
		    clip: {
		        autoPlay: true
		    }
	});

    $('.main').css('background-image', 'url()');
};


salon.gallery = function(el) {
    if (Galleria !== 'undefined') {
        Galleria.loadTheme('../Plugins/galleria/themes/classic/galleria.classic.min.js');
        Galleria.run(el);
        // once gallery loads remove background img
        $('.main').css('background-image', 'url()');
    } else {
        this.log('cannot load galleria library');
    }
};

salon.log = function(msg) {
	// check if debugging is supported
	// supported in IE9+, Webkit browsers, Firefox & Opera
	if (window.console && window.console.log) {
		console.log(msg);
	}
	// logging is not supported in this browser
};

salon.debug = function() {
    if (!this.debugMode && window.console && window.console.log) {
        // disable console output
        window.console = { };
        /* window.alert = {}; */
    }
};

salon.reset = function () {

    if (document.forms && document.forms.length > 1) {
        document.forms[0].reload();
        return false;
    } else {
        window.location.reload();
        return false;
    }

};