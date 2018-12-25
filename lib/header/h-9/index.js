function CCHeader12() {
	$('.canhcam-header-12 #demoResAllInOneMenu').kResponsiveMenu({
		animationSpeed: 'fast', // slow, fast, 200
		resizeWidth: 'lg', // 'xs', 'sm', 'md', 'lg', 'xl', 480,
		menuType: 'horizontal', // horizontal, vertical
		menuPush: 'right', // right, left
		menuPushPosition: 'fixed', // absolute
		menuPushWidth: '300px', // px, %, rem
		menuBackDrop: true, // px, %, rem
	})
};




function tab_fixing() {
if (window.location.href.search('#tab-tl-1') >= 1) {
	$('#myTab li:first-child a').trigger('click')
	$('.Module-159').addClass('tab-pane fade active show')
} else {
	$('#myTab li:nth-child(2) a').trigger('click')
	$('.Module-160').addClass('tab-pane fade active show')
}
$('.canhcam-header-12  .mainnav  .wrapper .nav .nav-item:nth-child(5) .sub-link a:first-child').on('click', function(){
	$('#myTab li:first-child a').trigger('click')

})
$('.canhcam-header-12  .mainnav  .wrapper .nav .nav-item:nth-child(5) .sub-link a:nth-child(2)').on('click', function(){
	$('#myTab li:nth-child(2) a').trigger('click')

})


}
$(document).ready(function () {
});



$(document).ready(function () {
	$('.Module-159').addClass('tab-pane fade ')
	$('.Module-159').attr('id','tab-1');
	$('.Module-160').addClass('tab-pane fade ')
	$('.Module-160').attr('id','tab-2');
	tab_fixing();
	CCHeader12();
	// setHeightheader()
	search()
});
// Fixed Header
$(window).scroll(function () {
	// $('.canhcam-header-12 .register ').height(0)
	// setHeightheader()
});

$(window).resize(function () {
	// setHeightheader()
})

function search() {
	$('.search').click(function () {
		$('.searchbox').toggleClass('active')
	})
}

function setHeightheader() {
	var maxHeight = 0;

	$('.canhcam-header-12 .k-responsive-menu').each(function () {
		var thisH = $(this).height();
		if (thisH > maxHeight) {
			maxHeight = thisH;
		}
	});
	$('.canhcam-header-12 .register ').height(maxHeight)
}
