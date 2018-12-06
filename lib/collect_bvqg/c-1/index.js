// $(document).ready(function () {
// 	// $('.canhcam-rqa-1 .canhcam-kl-1 .item:first-child .name').addClass('active');
// 	$('.canhcam-collect-bvqg-1  .nav    .nav-item  .list-unstyled').hide();
// 	$('.canhcam-collect-bvqg-1  .nav    .nav-item').removeClass('active');
// 	// $('.canhcam-collect-bvqg-1 .canhcam-kl-1 .item:first-child .list-unstyled').show();
// 	$('.canhcam-collect-bvqg-1 .nav  .nav-item  .nav-link  ').on('click', (function () {
// 		if ($(this).parents('.nav-item ').find('list-unstyled').is(':hidden') === true) {
// 			// $('.canhcam-collect-bvqg-1 .nav-item').removeClass('active');
// 			// $('.canhcam-collect-bvqg-1 .nav-item list-unstyled').slideUp();
// 			$(this).parents('.nav-item').find('list-unstyled').slideDown();
// 			$(this).parents('.nav-item').addClass('active');
// 		} else {
// 			$(this).parents('.nav-item').removeClass('active');
// 			$(this).parents('.nav-item').find('list-unstyled').slideUp();
// 		}
// 	}));
// })

$(function () {
	$('.canhcam-collect-ckmm-1  .nav    .nav-item  .list-unstyled').hide();
	$('.canhcam-collect-ckmm-1  .nav    .nav-item').removeClass('active');
	// $('.canhcam-collect-ckmm-1 .canhcam-kl-1 .item:first-child .list-unstyled').show();
	$('.canhcam-collect-ckmm-1 .nav .nav-item  .nav-link  ').on('click', (function () {
		if ($(this).parents('.nav-item ').find('.list-unstyled').is(':hidden') === true) {
			// $('.canhcam-collect-ckmm-1 .nav-item').removeClass('active');
			// $('.canhcam-collect-ckmm-1 .nav-item .list-unstyled').slideUp();
			$(this).parents('.nav-item').find('.list-unstyled').slideDown();
			$('.canhcam-collect-ckmm-1 .nav .nav-item   ').removeClass('active')
			$(this).parents('.nav-item').addClass('active');
		} else {
			$(this).parents('.nav-item').removeClass('active');
			$(this).parents('.nav-item').find('.list-unstyled').slideUp();

		}
	}));

})
$(function () {
	$('.canhcam-collect-bvqg-1  .nav    .nav-item  .list-unstyled').hide();
	$('.canhcam-collect-bvqg-1  .nav    .nav-item').removeClass('active');
	// $('.canhcam-collect-bvqg-1 .canhcam-kl-1 .item:first-child .list-unstyled').show();
	$('.canhcam-collect-bvqg-1 .nav .nav-item  .nav-link  ').on('click', (function () {
		if ($(this).parents('.nav-item ').find('.list-unstyled').is(':hidden') === true) {
			// $('.canhcam-collect-bvqg-1 .nav-item').removeClass('active');
			// $('.canhcam-collect-bvqg-1 .nav-item .list-unstyled').slideUp();
			$(this).parents('.nav-item').find('.list-unstyled').slideDown();
			$('.canhcam-collect-bvqg-1 .nav .nav-item   ').removeClass('active')
			$(this).parents('.nav-item').addClass('active');

		} else {
			$(this).parents('.nav-item').removeClass('active');
			$(this).parents('.nav-item').find('.list-unstyled').slideUp();

		}
	}));

})


// $(document).ready(function () {

// 	/* This is basic - uses default settings */

// 	$("#image").fancybox();

// 	/* Using custom settings */

// 	// $("a#inline").fancybox({
// 	// 	'hideOnContentClick': true
// 	// });

// 	// /* Apply fancybox to multiple items */

// 	$("#image").fancybox({
// 		'transitionIn': 'elastic',
// 		'transitionOut': 'elastic',
// 		'speedIn': 600,
// 		'speedOut': 200,
// 		'overlayShow': false
// 	});

// });

