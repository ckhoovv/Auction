/**
 * 
 */

window.onload = function join() {
	$(".sign_button").click(function(){
		var id_check = $(this).attr("id");
		location.href=id_check+'.do';
	});
}
