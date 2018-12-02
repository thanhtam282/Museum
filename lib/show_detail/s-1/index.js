$(function () {
	$('.canhcam-show-detail-1 .col-md-3 .link .sub-link').hide();
	// $('.canhcam-show-detail-1.canhcam-kl-1 .item:first-child .sub-link').show();
	$('.canhcam-show-detail-1  .col-md-3 .link ').on('click', (function() {
		if ($(this).parents(' .col-md-3 ').find('.sub-link').is(':hidden') === true) {
			// $('.canhcam-show-detail-1 .col-md-3 .link').removeClass('active');
			// $('.canhcam-show-detail-1 .col-md-3 .link .sub-link').slideUp();
		$('.canhcam-show-detail-1  .col-md-3 .link ').find('.sub-link').slideDown();
		$('.canhcam-show-detail-1  .col-md-3 .link ').addClass('active');
		} else {
		$('.canhcam-show-detail-1  .col-md-3 .link ').removeClass('active');
		$('.canhcam-show-detail-1  .col-md-3 .link ').find('.sub-link').slideUp();
	
		}
	}));

})

$(document).ready(function() {


	$(".canhcam-show-detail-1  .item ").lightGallery({
		thumbnail: true,
		animateThumb: false,
		showThumbByDefault: false,
		selector: '.image',
		addClass: 'canhcam-gallery-1 canhcam-video-fixed-size'
	});

});
