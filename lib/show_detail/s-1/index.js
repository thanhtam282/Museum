$(function () {
	// $('.canhcam-show-detail-1 .col-md-3 .link .sub-link').hide();

})

$(document).ready(function() {

	$('.canhcam-show-detail-1  .col-md-3 .link ').each(function(){

		$(this).on('click', (function(){
			if ($(this).find('.sub-link a').length){
				$(this).toggleClass('active')

			}
			$(this).find('.sub-link').slideToggle()

			$(this).siblings().find('.sub-link').slideUp()
		}))
	})

});
