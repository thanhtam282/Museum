

function changeIMGtoDiv1(){
	$('.canhcam-news-details-1 .othernews .item figure').each(function () {
		var tmp = $(this).find('img').attr('src')
		$(this).append('<div class="thumb"></div>')
		$(this).find('.thumb').css({
			"background-image": "url(" + tmp + ")",
			"background-position": "center center",
			"background-size": "cover"
		})
	})
}
function changeIMGtoDiv1_subject(){
	$('.canhcam-subject-details-1 .othernews .item figure').each(function () {
		var tmp = $(this).find('img').attr('src')
		$(this).append('<div class="thumb"></div>')
		$(this).find('.thumb').css({
			"background-image": "url(" + tmp + ")",
			"background-position": "center center",
			"background-size": "cover"
		})
	})
}


$(document).ready(function() {
	changeIMGtoDiv1()
	changeIMGtoDiv1_subject()
});

$(window).resize(function () {
	changeIMGtoDiv1_subject()
	changeIMGtoDiv1()
})
