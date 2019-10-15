/**
 * 
 */


/*$(function() {
    회원 정보 수정 
   $("#member_update").click(function() {
      location.href='myPage_member_update.do';
   });
   
    구매 이력 조회 
   $("#product_select").click(function() {
      location.href='myPage_product_select.do';
   });
   
    기부 이력 조회 
   $("#dona_select").click(function() {
      location.href='myPage_dona_select.do';
   });
})*/


$(function (){
	if($("#passBtn").click(function(){
		if($("#pw").val() !== $("#pw2").val()){
			alert("비밀번호가 다릅니다.");
			$("#pw").val("").focus();
			$("#pw2").val("");
			return false;
		}else if ($("#pw").val().length < 4) {
			alert("비밀번호는 8자 이상으로 설정해야 합니다.");
			$("#pw").val("").focus();
			$("#pw2").val("").focus();
			return false;
		}else if($.trim($("#pw").val()) !== $("#pw").val()){
			alert("공백은 입력이 불가능합니다.");
			return false;
		}
		
		var old_pw = $("#old_pw").val() 
		var pw = $("#pw").val() 
		var pw2 = $("pw2").val() 
		
		$.ajax({
	        url:"myPage_member_password_select.do",
			type:"post",
	        data: {
	        	"old_pw" : old_pw
	        },
	        success: function(result){
	        	if(old_pw == result) {
		        	$.ajax({
		    	        url:"myPage_member_password_update.do",
		    			type:"post",
		    	        data: {
		    	        	"pw" : pw,
		    	        	"pw2" : pw2
		    	        },
		    	        success: function(result){
		    				alert("새 비밀번호 등록 완료");
		    				$("#old_pw").val("").focus();
		    				$("#pw").val("").focus();
		    				$("#pw2").val("").focus();
		    	        },
		    	        error : function(xhr, status) {
		    				$("#old_pw").val("").focus();
		    				$("#pw").val("").focus();
		    				$("#pw2").val("").focus();
		    	           alert(xhr + " : " + status);
		    	        }
		    	    });// end ajax
	        	} else {
	        		alert("비밀 번호를 확인해주세요")
	        	}
	        },
	        error : function(xhr, status) {
				$("#old_pw").val("").focus();
				$("#pw").val("").focus();
				$("#pw2").val("").focus();
	           alert(xhr + " : " + status);
	        }
	    });// end ajax
	}));
})
