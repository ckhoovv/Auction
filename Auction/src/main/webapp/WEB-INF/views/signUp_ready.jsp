<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<!-- css -->
		<link href="resources/css/signUp_ready.css" rel="stylesheet" type="text/css" />
		
		<!-- js -->
		<script type="text/javascript" src="resources/js/signUp_ready.js"></script>
		<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	</head>
	<body>
		<jsp:include page="top.jsp" flush="false"></jsp:include>
		
		<h2>회원가입</h2> 

		<div class="join_center">
			<!-- 일반로그인로그인--> 
			<div class="join_ready_button">
				<button class="sign_button" id="signUp" onclick="join()">일반로그인</button>
				<!-- 네이버로그인-->
				<button class="sign_button" id="b_naver" onclick="join()">네이버</button>
				<!-- 다음로그인-->
				<button class="sign_button" id="b_daum" onclick="join()">다음</button>
				<!-- 구글로그인-->
				<button class="sign_button" d="b_google" onclick="join()">구글</button>
				
				<!-- 페이스북로그인-->
				<button class="sign_button" id="b_facebook" onclick="join()">페이스북</button>
				<!-- 카카오로그인-->
				<button class="sign_button" id="b_kakao" onclick="join()">카카오</button>
			</div>
		</div>
	</body>
</html>