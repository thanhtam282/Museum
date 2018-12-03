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


$(document).ready(function () {
	CCHeader12()
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

function search(){
	$('.search').click(function(){
		$('.searchbox').toggleClass('active')
	})
}

function setHeightheader() {
    var maxHeight = 0;

    $('.canhcam-header-12 .k-responsive-menu').each(function() {
        var thisH = $(this).height();
        if (thisH > maxHeight) { maxHeight = thisH; }
    });
    $('.canhcam-header-12 .register ').height(maxHeight)
}
