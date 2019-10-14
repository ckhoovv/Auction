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


$(function(){
	if($("#pwForm").submit(function(){
		if($("#pw").val() !== $("#pw2").val()){
			alert("비밀번호가 다릅니다.");
			$("#pw").val("").focus();
			$("#pw2").val("");
			return false;
		}else if ($("#pw").val().length < 8) {
			alert("비밀번호는 8자 이상으로 설정해야 합니다.");
			$("#pw").val("").focus();
			return false;
		}else if($.trim($("#pw").val()) !== $("#pw").val()){
			alert("공백은 입력이 불가능합니다.");
			return false;
		}
	}));
})
