function setWidthli_intro() {
    var maxWidth = 0;

    $('.canhcam-intro-nav .wrapper ul li ').each(function() {
        var thisH = $(this).width();
        if (thisH > maxWidth) { maxWidth = thisH; }
    });
    $('.canhcam-intro-nav .wrapper ul li ').width(maxWidth)
}
$(function() {
    // setWidthli_intro()
})
function scrollMenu_intro() {

	$('.canhcam-intro-nav .wrapper .list-inline .list-inline-item').on('click', function () {
		var idBlock = $(this).find('.li-link').attr('href');
		var pos = $(idBlock).offset().top;
		var scrollTo = pos - $('.canhcam-header-12').outerHeight() + 10
		$('.canhcam-intro-nav .wrapper .list-inline .list-inline-item .li-link').removeClass('active')
		$(this).find('.li-link').toggleClass('active')
		$('html, body').animate({
			scrollTop: scrollTo
		}, 500);
	});
}

$(document).ready(function () {
	scrollMenu_intro()
})


// function scrollAddClass_intro() {
//     var e = $(document).scrollTop();
//     $('.canhcam-intro-nav .wrapper .list-inline .list-inline-item').each(function() {
//         var idBlock = $(this).find('.li-link').attr('href');
//         var pos = $(idBlock).offset().top - $('.canhcam-header-12').outerHeight() - 350;
//         if (e > pos) {
//             $('.canhcam-intro-nav .wrapper .list-inline .list-inline-item').removeClass('active')
//             $(this).addClass('active');
//         }
//     })
// }
// $(document).on('scroll', function() {

//     scrollAddClass_intro();
// })
