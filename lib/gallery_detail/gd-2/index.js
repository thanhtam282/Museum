function ProductDetailShop1() {
	$('.canhcam-gallery-details-1 .product-details .slider-for').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: false,
		fade: false,
		infinite: true,
		autoplay: false,
		asNavFor: '.slider-nav'
	});
	$('.canhcam-gallery-details-1 .product-details .slider-nav').slick({
		autoplay: false,
		slidesToShow: 5,
		slidesToScroll: 1,
		asNavFor: '.slider-for',
		dots: false,
		arrows: true,
		centerMode: false,
		focusOnSelect: true,
		prevArrow: $('.top-arrow'),
		nextArrow: $('.bottom-arrow'),
		vertical: true,
		variableWidth: false,
		verticalSwiping: false,
		infinite: true,
		responsive: [{
			breakpoint: 768,
			settings: {
				slidesToShow: 3,
				vertical: false,
				verticalSwiping: false,
				variableWidth: false
			}
		}]
	}).on('init', function (event, slick, direction) {
		if (!$('.canhcam-gallery-details-1 .product-details .slider-nav .top-arrow').is(':visible')) {
			$('.canhcam-gallery-details-1 .product-details .slider-control').css({
				'padding-top': '0px'
			})
		}
	}).on('afterChange', function (event, slick, currentSlide, nextSlide) {
		var getcs = slick.$slides.length - 1
		if (currentSlide == 0) {
			$('.canhcam-gallery-details-1 .product-details .top-arrow').attr('disabled', 'disabled')
		} else {
			$('.canhcam-gallery-details-1 .product-details .top-arrow').removeAttr('disabled')
		}
		if (getcs == currentSlide) {
			$('.canhcam-gallery-details-1 .product-details .bottom-arrow').attr('disabled', 'disabled')
		} else {
			$('.canhcam-gallery-details-1 .product-details .bottom-arrow').removeAttr('disabled')
		}
	});
};

$(document).ready(function () {

	ProductDetailShop1();

	$('.canhcam-gallery-details-1 #quantity input').TouchSpin({
		min: 0,
		max: 100,
		buttondown_class: "btn btn-default",
		buttonup_class: "btn btn-default"
	});

});


$(function () {

})

$(window).resize(function () {})
$(function () {
	if ($('.canhcam-gallery-details-1 .list-items').length) {
		$(".canhcam-gallery-details-1 .list-items").slick({
			// autoplay: true,
			// slickPlay: true,
			// slickPause: true,
			autoplaySpeed: 1600,
			dots: false,
			infinite: true,
			speed: 300,
			arrows: true,
			slidesToShow: 3,
			slidesToScroll: 1,
			// customPaging: function(slider, i) {
			//     var thumb = $(slider.$slides[i]).data('thumb');
			//     return '<a><p> ' + thumb + '</p></a>';
			// },
		});
	}
	if ($('.canhcam-gallery-details-1  .owl-carousel').length) {
		$(' .canhcam-gallery-details-1 .owl-carousel').owlCarousel({
			loop: true,
			margin: 30,
			nav: true,
			dots: false,
			navText: ["<span class='lnr lnr-chevron-left'></span>","<span class='lnr lnr-chevron-right'></span>"],
			responsive: {
				0: {
					items: 1
				},
				768: {
					items: 2
				},
				992: {
					items: 3
				}
			}
		})
	}
});
