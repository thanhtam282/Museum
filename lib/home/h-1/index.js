$(document).ready(function () {

});

$(window).resize(function () {})
$(function () {
	if ($('.canhcam-home-1 .list-items').length) {
		$(".canhcam-home-1 .list-items").not('.slick-initialized').slick({
			autoplay: true,
			dots: false,
			infinite: true,
			speed: 300,
			pauseOnHover: false,
			pauseOnFocus: false,
			slidesToShow: 1,
			slidesToScroll: 1,
			customPaging: function(slider, i) {
			    var thumb = $(slider.$slides[i]).data('thumb');
			    return '<a><p> ' + thumb + '</p></a>';
			},
		});
	}

});
