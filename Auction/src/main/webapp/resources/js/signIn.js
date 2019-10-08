/**
 * 
 */
$(function(){
	 /*일반 로그인, 소셜 로그인 구분*/ 
	$(".sign_button").click(function(){
		var id_check = $(this).attr("id");
		location.href=id_check+'.do';
	});
	
	 /*로그인 유효성 검사*/ 
	$("#doLogin").click(function(){
		var email = $("#email").val();
		var pw = $("#pw").val();
		$.ajax({
            url:"doLogin.do",
            data: {
            	"email" : email,
            	"pw" : pw,
            	"name" : name
            },
            success: function(result){
            	var check = result.split(",");
            	var email = check[0];
            	var pw = check[1];
            	var name = check[2];
            	if(email == null || email == "") {
            		alert("아이디와 비밀번호를 확인해주세요.")
            		$("#email").val("")
            	} else {
            		location.href='sessionLogin.do?email='+email+','+name;
            	}
            },
            error : function(xhr, status) {
               alert(xhr + " : " + status);
            }
        });// end ajax
	});
})
