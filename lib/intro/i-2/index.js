function setWidthli_intro() {
    var maxWidth = 0;

    $('.canhcam-intro-1 .wrapper ul li ').each(function() {
        var thisH = $(this).width();
        if (thisH > maxWidth) { maxWidth = thisH; }
    });
    $('.canhcam-intro-1 .wrapper ul li ').width(maxWidth)
}
$(function() {
    setWidthli_intro()
})
