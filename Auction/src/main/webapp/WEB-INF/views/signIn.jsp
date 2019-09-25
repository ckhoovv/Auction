<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>login</title>
		<!-- css -->
		<link href="resources/css/login.css" rel="stylesheet" type="text/css" />
		<link href="resources/css/signUp_ready.css" rel="stylesheet" type="text/css" />
	
		<!-- js -->
		<script type="text/javascript" src="resources/js/signIn.js"></script>
		<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	</head>
	<body>
		<jsp:include page="top.jsp" flush="false"></jsp:include>
	
	<!-- login form -->	
	<div class="login_center">
	
		<div class="lgoin_align">
			<!-- login id / pw 입력 -->
			<div class="login_float">
				<!-- id 입력 -->
				<div class="lgin_inline">
					<label>아이디</label>
					<input type="text" placeholder="아이디" name="id"/>
				</div>
				<!-- pw 입력 -->
				<div class="lgin_inline">
					<label>비밀번호</label>
					<input type="text" placeholder="비밀번호" name="pw"/>
				</div>
			</div>
			<!-- login 버튼 -->		
			<div class="login_float">
				<button type="submit" id="doLogin" onclick="doLogin();">로그인</button>
			</div>
			
			<!-- 아이디 / 비밀번호  찾기 -->
			<div>
			
			</div>
		</div>
		<!-- 회원가입 -->
		<div>
			<!-- <button type="submit" onclick="location.href='signUp_ready.do'">회원가입</button> -->
			<div class="join_center">
			<!-- 일반로그인로그인--> 
			<div class="join_ready_button">
				<button class="sign_button" id="signUp" onclick="join()">일반회원가입</button>
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
		</div>
	</div>
		
	</body>
</html>