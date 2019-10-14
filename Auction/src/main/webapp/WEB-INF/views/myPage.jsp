<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>마이페이지</title>
      <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
      <script type="text/javascript" src="resources/js/myPage.js"></script>
   	  <style type="text/css">
   	  .mypage_wrap {
   	  	width: 1000px;
   	  	height: 701px;
   	  	border: 1px solid black;
   	  	margin-left: 25%;
   	  	margin-top: 50px;
   	  }
   	  .mypage_menu {
   	  	width:150px;
   	  	height:701px;
		border-right: 1px solid black;   	  
   	  }
   	  .mypage_menu ul{
   	  	list-style: none;
   	  	display: contents;
   	  }
   	  .mypage_menu li{
   	  	border-bottom: 1px solid #AAB7B8;
   	  }
   	  .mypage_menu button {
   	  	width: 150px;
   	  	height:139.5px; 
   	  	border: 1px solid #2E86C1;
   	  	background: #21618C;
   	  	color: #fff;
   	  	font-size: 15px;
   	  }
   	  .member_update {
   	  	float: right;
   	  	width: 850px;
   	  	height: 701px;
   	  	margin-top: -70%;
   	  }
   	  .member_update_title {
   	  	width: 849px; 
   	  	height: 50px;
   	  	margin-left: 1px;
   	  	text-align: center;
   	  	border-bottom: 1px solid black;
   	  	background: #F8C471;
   	  }
   	  .member_update_title strong{
   	  	font-size: 35px;
   	  	color: #873600;
   	  }
   	  .member_buy_list {
   	  	float: right;
   	  	width: 850px;
   	  	height: 701px;
   	  	margin-top: -70%;
   	  }
   	  .member_buy_list_title {
   	  	width: 849px; 
   	  	height: 50px;
   	  	margin-left: 1px;
   	  	text-align: center;
   	  	border-bottom: 1px solid black;
   	  	background: #F8C471;
   	  }
   	  .member_buy_list_title strong {
   	  	font-size: 35px;
   	  	color: #873600; 
   	  }
   	  .member_donation_list {
   	  	float: right;
   	  	width: 850px;
   	  	height: 701px;
   	  	margin-top: -70%;
   	  }
   	  .member_donation_list_title{
   	  	width: 849px; 
   	  	height: 50px;
   	  	margin-left: 1px;
   	  	text-align: center;
   	  	border-bottom: 1px solid black;
   	  	background: #F8C471; 
   	  }
   	  .member_donation_list_title strong{
   	  	font-size: 35px;
   	  	color: #873600; 
   	  }
   	  .member_event_list{
   	  	float: right;
   	  	width: 850px;
   	  	height: 701px;
   	  	margin-top: -70%;
   	  }
   	  .member_event_list_title {
   	  	width: 849px; 
   	  	height: 50px;
   	  	margin-left: 1px;
   	  	text-align: center;
   	  	border-bottom: 1px solid black;
   	  	background: #F8C471; 
   	  }
   	  .member_event_list_title strong{
   	  	font-size: 35px;
   	  	color: #873600; 
   	  }
   	  .member_winner_list{
   	  	float: right;
   	  	width: 850px;
   	  	height: 701px;
   	  	margin-top: -70%; 
   	  }
   	  .member_winner_list_title{
   	  	width: 849px; 
   	  	height: 50px;
   	  	margin-left: 1px;
   	  	text-align: center;
   	  	border-bottom: 1px solid black;
   	  	background: #F8C471; 
   	  }
   	  .member_winner_list_title strong{
   	  	font-size: 35px;
   	  	color: #873600; 
   	  }
   	  </style>
   	  
   </head>
   <script type="text/javascript">
   		function member_update() {
   			var div = document.getElementById("member_update");
			if (div.style.display == 'none'){
				div.style.display = 'block';
			}else{
			document.getElementById("member_buy_list").style.display="none";
			document.getElementById("member_donation_list").style.display="none";
			document.getElementById("member_event_list").style.display="none";
			document.getElementById("member_winner_list").style.display="none";
			}
		};
   		
   		function member_buy_list() {
   			var div = document.getElementById("member_buy_list");
   			if(div.style.display == 'none'){
   				div.style.display = 'block';
   			}else{
			document.getElementById("member_update").style.display="none";
			document.getElementById("member_donation_list").style.display="none";
			document.getElementById("member_event_list").style.display="none";
			document.getElementById("member_winner_list").style.display="none";
   			}
		};
   		function member_donation_list() {
   			var div = document.getElementById("member_donation_list");
   			if(div.style.display == 'none'){
   				div.style.display = 'block';
   			}else{
			document.getElementById("member_update").style.display="none";
			document.getElementById("member_buy_list").style.display="none";
			document.getElementById("member_event_list").style.display="none";
			document.getElementById("member_winner_list").style.display="none";
   			}
		};
   		function member_event_list() {
   			var div = document.getElementById("member_event_list");
   			if(div.style.display == 'none'){
   				div.style.display = 'block';
   			}else{
			document.getElementById("member_update").style.display="none";
			document.getElementById("member_buy_list").style.display="none";
			document.getElementById("member_donation_list").style.display="none";
			document.getElementById("member_winner_list").style.display="none";
   			}
		};
   		function member_winner_list() {
   			var div = document.getElementById("member_winner_list");
   			if(div.style.display == 'none'){
   				div.style.display = 'block';
   			}else{
			document.getElementById("member_update").style.display="none";
			document.getElementById("member_buy_list").style.display="none";
			document.getElementById("member_donation_list").style.display="none";
			document.getElementById("member_event_list").style.display="none";
   			}
		};
   
   </script>
   <body>
      <jsp:include page="top.jsp" flush="false"></jsp:include>
      <!-- <div>
         <button type="button" id="member_update">회원 정보 수정</button>
         <button type="button" id="product_select">구매 이력 보기</button>
         <button type="button" id="dona_select">기부 이력 보기</button>
      </div> -->
      
      
      <div class="mypage_wrap">
      	<div class="mypage_menu">
      		<ul>
      			<li><button type="button" onclick="member_update()">회원 상세정보</button></li>
      			<li><button type="button" onclick="member_buy_list()">회원 구매이력</button></li>
      			<li><button type="button" onclick="member_donation_list()">회원 기부이력</button></li>
      			<li><button type="button" onclick="member_event_list()">회원 응모이력</button></li>
      			<li><button type="button" onclick="member_winner_list()">회원 당첨이력</button></li>
      		</ul>
      	</div>
      	<div class="member_update" id="member_update" style="display: block;">
      		<div class="member_update_title">
      			<strong>회원 정보 수정</strong>
      		</div>
      	</div>
      	<div class="member_buy_list" id="member_buy_list" style="display: none;">
      		<div class="member_buy_list_title">
      			<strong>회원 구매이력</strong>
      		</div>
      	</div>
      	<div class="member_donation_list" id="member_donation_list" style="display: none;">
      		<div class="member_donation_list_title">
      			<strong>회원 기부이력</strong>
      		</div>
      	</div>
      	<div class="member_event_list" id="member_event_list" style="display: none;">
      		<div class="member_event_list_title">
      			<strong>회원 응모이력</strong>
      		</div>
      	</div>
      	<div class="member_winner_list" id="member_winner_list" style="display: none;">
      		<div class="member_winner_list_title">
      			<strong>회원 당첨이력</strong>
      		</div>
      	</div>
      </div>
      
   </body>
</html>