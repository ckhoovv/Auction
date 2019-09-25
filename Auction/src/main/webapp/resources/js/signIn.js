/**
 * 
 */

window.onload = function join() {
	$(".sign_button").click(function(){
		var id_check = $(this).attr("id");
		alert(id_check)
		location.href=id_check+'.do';
	});
}


/*window.onload = function result_join() {
	$(".result_button").click(function(){
		location.href='signIn.do';
	});
}
*/
window.onload = function doLogin() {
	$("#doLogin").click(function(){
		alert("ㅎㅇ")
	});
};


/*
window.onload = function doLogin() {
	$("#doLogin").click(function(){
		$.ajax({
            url:'doLogin.do',
            dataType: 'text',
            success: function(result){
            	
            }
        });// end ajax
        return false;
		location.href='doLogin.do';
	});
};*/


	/*$("#rss").click(function(){
		$(document).ready(function() {
			$("#doLogin").click();
			$.ajax({
				url: "https://api.rss2json.com/v1/api.json?rss_url=http://www.chosun.com/site/data/rss/rss.xml&api_key=jphzs4irszlwnezw8hfvcmgmwo24zeqcgyyul5ow", 
				dataType: "json",
				data: {
					url:"http://www.chosun.com/site/data/rss/rss.xml",
					api_key: "jphzs4irszlwnezw8hfvcmgmwo24zeqcgyyul5ow",
					count: 20
				} ,
				success: function(result) {
					for(var index=0; index<20 ; index++) {
						var title = result.items[index].title
						var thumbnail = result.items[index].thumbnail
						var link = result.items[index].link
						$("#result").append("<a href="+link+">"+title+"</a><br>");
						$("#result").append("<img src="+thumbnail+"><br>");
					}
				}
			});
		});
	});
	
	$(document).ready(function() {
	    $('#collapseOne').click(function() {
	        
	    });
	});*/