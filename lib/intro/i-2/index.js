// function setWidthli_intro() {
//     var maxWidth = 0;

//     $('.canhcam-intro-1 .wrapper ul li ').each(function() {
//         var thisH = $(this).width();
//         if (thisH > maxWidth) { maxWidth = thisH; }
//     });
//     $('.canhcam-intro-1 .wrapper ul li ').width(maxWidth)
// }
// $(function() {
//     setWidthli_intro()
// })
// function scrollMenu_intro() {

// 	$('.canhcam-intro-2 .wrapper .list-inline .list-inline-item').on('click', function () {
// 		var idBlock = $(this).find('.li-link').attr('href');
// 		var pos = $(idBlock).offset().top;
// 		var scrollTo = pos - $('.canhcam-header-12').outerHeight() 
// 		$('html, body').animate({
// 			scrollTop: scrollTo
// 		}, 500);
// 	});
// }

// $(document).ready(function () {
// 	scrollMenu_intro()
// })
