$(function () {
	
})

$(document).ready(function() {
	
	$('.show-long-time .canhcam-show-detail-1 .col-md-3 .link .sub-link').hide();
	$('.show-long-time .canhcam-show-detail-1 .col-md-3 .link .sub-link a.active').parents('.link').addClass('active');
	$('.show-long-time .canhcam-show-detail-1 .col-md-3 .link .sub-link a.active').parents('.link').find('.sub-link').slideToggle();
	$('.show-long-time .canhcam-show-detail-1  .col-md-3 .link ').each(function(){

		$(this).on('click', (function(){
			if ($(this).find('.sub-link a').length){
				$(this).toggleClass('active')

			}
			$(this).find('.sub-link').slideToggle()

			$(this).siblings().find('.sub-link').slideUp()
		}))
	})

});
