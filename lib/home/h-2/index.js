$(document).ready(function () {
	$('.canhcam-home-2 .dropdown-menu').css('display', '')
});

$(function () {
	if ($('.canhcam-home-2 .list-items').length) {
		$(".canhcam-home-2 .list-items").not('.slick-initialized').slick({
			autoplay: true,
			// slickPlay: true,
			// slickPause: true,
			autoplaySpeed: 1600,
			dots: true,
			infinite: false,
			speed: 300,
			arrows: false,
			slidesToShow: 1,
			slidesToScroll: 1,
			// customPaging: function(slider, i) {
			//     var thumb = $(slider.$slides[i]).data('thumb');
			//     return '<a><p> ' + thumb + '</p></a>';
			// },
		});
	}

});

$(function () {
	$(".canhcam-home-2 .pause").click(function(){
		$(".canhcam-home-2 .list-items").slick('slickPause');
		$(this).hide()
		$(".canhcam-home-2 .play").show()

	})
	$(".canhcam-home-2 .play").click(function(){
		$(".canhcam-home-2 .list-items").slick('slickPlay');
		$(this).hide()
		$(".canhcam-home-2 .pause").show()

	})
})
