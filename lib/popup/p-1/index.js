// if ( $('.remodal .wrap-form .form-group.qdropdown:nth-last-child(3) option:selected').val() < 20 ) {
// 	$(this).hide()
// }

// $(document).ready(function() {
// 	$('.remodal .wrap-form select').addClass('cus_option')
//     $('.remodal .wrap-form select .cus_option').select2();
//     // $('#option2').select2();
// });

$(document).ready(function () {
	document.getElementById("ctl00_mdl234_ctl00_ctle7bd2fef77cc4db48fec3efca030f0d6_txte7bd2fef77cc4db48fec3efca030f0d6").placeholder = "Vd: Nguyễn Văn A";
	document.getElementById("ctl00_mdl234_ctl00_ctlbde18f2a744e4a61ad564cc94a75def2_txtbde18f2a744e4a61ad564cc94a75def2").placeholder = "Vd: nguyenvana@gmail.com";
	document.getElementById("ctl00_mdl234_ctl00_ctlb9a6f7c2f29f494ead87ce708fa6a452_txtb9a6f7c2f29f494ead87ce708fa6a452").placeholder = "Vd: 0813456789";
	setTimeout(function(){ $("body .remodal-wrapper").appendTo("#aspnetForm"); }, 500);
});
