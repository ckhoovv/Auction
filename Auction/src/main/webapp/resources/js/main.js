/**
 * 
 */

function printTime() {
      var clock = document.getElementById("clock");
      var now = new Date();
      clock.innerHTML = now.getFullYear() + "년" + (now.getMonth() + 1) + "월"
            + now.getDate() + "일" + now.getHours() + "시" + now.getMinutes()
            + "분" + now.getSeconds() + "초";
      // setTimeout함수를 통해 원하는 함수를 1초간격으로 출력해줌
      setTimeout("printTime()", 1000);
   }
   window.onload = printTime;
   
   
   
   $(document).ready(function() {
	      var main = $('.bxslider').bxSlider({
	         mode : 'fade',
	         auto : true, //자동으로 슬라이드 
	         controls : true, //좌우 화살표   
	         autoControls : true, //stop,play 
	         pager : true, //페이징 
	         pause : 3000,
	         autoDelay : 0,
	         slideWidth : 2000, //이미지 박스 크기설정
	         speed : 500,
	         stopAutoOnclick : true
	      });
	      $(".bx-stop").click(function() { // 중지버튼 눌렀을때 
	         main.stopAuto();
	         $(".bx-stop").hide();
	         $(".bx-start").show();
	         return false;
	      });
	      $(".bx-start").click(function() { //시작버튼 눌렀을때 
	         main.startAuto();
	         $(".bx-start").hide();
	         $(".bx-stop").show();
	         return false;
	      });
	      $(".bx-start").hide(); //onload시 시작버튼 숨김. 
	   });