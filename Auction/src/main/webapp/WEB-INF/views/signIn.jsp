<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>login</title>
		<!-- css -->
		<link href="resources/css/login.css" rel="stylesheet" type="text/css" />
	
		<!-- js -->
		<script type="text/javascript" src="resources/js/login.js"></script>
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
				<button type="submit" onclick="doLogin();">로그인</button>
			</div>
			
			<!-- 아이디 / 비밀번호  찾기 -->
			<div>
			
			</div>
		</div>
		<!-- 회원가입 -->
		<div>
			<button type="submit" onclick="location.href='signUp_ready.do'">회원가입</button>
		</div>
	</div>
		
	</body>
</html>