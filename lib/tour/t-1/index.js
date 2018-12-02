function setHeightH3_tour_1() {
	var maxHeight = 0;

	$('.canhcam-tour-1 .info_wrapper').each(function () {
		var thisH = $(this).height();
		if (thisH > maxHeight) {
			maxHeight = thisH;
		}
	});
	$('.canhcam-tour-1 .info_wrapper').height(maxHeight)
}
function setHeightH3_tour_3() {
	var maxHeight = 0;

	$('.canhcam-tour-3 .wrapper_block .wrapper-contact').each(function () {
		var thisH = $(this).height();
		if (thisH > maxHeight) {
			maxHeight = thisH;
		}
	});
	$('.canhcam-tour-3 .wrapper_block .wrapper-contact').height(maxHeight)
}
$(function () {
	setHeightH3_tour_1()
	setHeightH3_tour_3()
})
