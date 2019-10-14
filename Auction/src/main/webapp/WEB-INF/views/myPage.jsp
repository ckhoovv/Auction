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
   	  	height: 700px;
   	  	border: 1px solid black;
   	  	margin-left: 25%;
   	  	margin-top: 50px;
   	  }
   	  .mypage_menu {
   	  	width:150px;
   	  	height:700px;
		border-right: 1px solid black;   	  
   	  }
   	  .mypage_menu ul{
   	  	list-style: none;
   	  	display: inline;
   	  }
   	  .mypage_menu li{
   	  	border-bottom: 1px solid #AAB7B8;
   	  }
   	  </style>
   
   </head>
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
      			<li><a href="#">회원 상세정보</a></li>
      			<li><a href="#">회원 구매이력</a></li>
      			<li><a href="#">회원 기부이력</a></li>
      			<li><a href="#">회원 응모이력</a></li>
      			<li><a href="#">회원 당첨이력</a></li>
      		</ul>
      	</div>
      </div>
      
   </body>
</html>