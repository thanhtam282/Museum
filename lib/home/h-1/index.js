$(document).ready(function () {

});

$(window).resize(function () {})
$(function () {
	if ($('.canhcam-home-1 .list-items').length) {
		$(".canhcam-home-1 .list-items").slick({
			autoplay: false,
			dots: true,
			infinite: false,
			speed: 300,
			slidesToShow: 1,
			slidesToScroll: 1,
			customPaging: function(slider, i) {
			    var thumb = $(slider.$slides[i]).data('thumb');
			    return '<a><p> ' + thumb + '</p></a>';
			},
		});
	}

});
