<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="resources/js/myPage.js"></script>
<style type="text/css">
.mypage_wrap {
	width: 1000px;
	height: 707px;
	border: 1px solid black;
	margin-left: 25%;
	margin-top: 50px;
}

.mypage_menu {
	width: 150px;
	height: 701px;
	border-right: 1px solid black;
}

.mypage_menu ul {
	list-style: none;
	display: contents;
}

.mypage_menu li {
	border-bottom: 1px solid #AAB7B8;
}

.mypage_menu button {
	width: 150px;
	height: 139.5px;
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
	width: 830px;
	height: 50px;
	margin-left: 1px;
	text-align: center;
	border-bottom: 1px solid black;
	background: #F8C471;
}

.member_update_title strong {
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
	width: 830px;
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

.member_donation_list_title {
	width: 830px;
	height: 50px;
	margin-left: 1px;
	text-align: center;
	border-bottom: 1px solid black;
	background: #F8C471;
}

.member_donation_list_title strong {
	font-size: 35px;
	color: #873600;
}

.member_event_list {
	float: right;
	width: 850px;
	height: 701px;
	margin-top: -70%;
}

.member_event_list_title {
	width: 830px;
	height: 50px;
	margin-left: 1px;
	text-align: center;
	border-bottom: 1px solid black;
	background: #F8C471;
}

.member_event_list_title strong {
	font-size: 35px;
	color: #873600;
}

.member_winner_list {
	float: right;
	width: 850px;
	height: 701px;
	margin-top: -70%;
}

.member_winner_list_title {
	width: 830px;
	height: 50px;
	margin-left: 1px;
	text-align: center;
	border-bottom: 1px solid black;
	background: #F8C471;
}

.member_winner_list_title strong {
	font-size: 35px;
	color: #873600;
}
</style>

</head>
<script type="text/javascript">
	function member_update() {
		var div = document.getElementById("member_update");
		div.style.display = 'block';

		document.getElementById("member_buy_list").style.display = "none";
		document.getElementById("member_donation_list").style.display = "none";
		document.getElementById("member_event_list").style.display = "none";
		document.getElementById("member_winner_list").style.display = "none";
	};

	function member_buy_list() {
		var div = document.getElementById("member_buy_list");
		div.style.display = 'block';

		document.getElementById("member_update").style.display = "none";
		document.getElementById("member_donation_list").style.display = "none";
		document.getElementById("member_event_list").style.display = "none";
		document.getElementById("member_winner_list").style.display = "none";
	};
	function member_donation_list() {
		var div = document.getElementById("member_donation_list");
		div.style.display = 'block';

		document.getElementById("member_update").style.display = "none";
		document.getElementById("member_buy_list").style.display = "none";
		document.getElementById("member_event_list").style.display = "none";
		document.getElementById("member_winner_list").style.display = "none";
	};
	function member_event_list() {
		var div = document.getElementById("member_event_list");
		div.style.display = 'block';

		document.getElementById("member_update").style.display = "none";
		document.getElementById("member_buy_list").style.display = "none";
		document.getElementById("member_donation_list").style.display = "none";
		document.getElementById("member_winner_list").style.display = "none";
	};
	function member_winner_list() {
		var div = document.getElementById("member_winner_list");
		div.style.display = 'block';

		document.getElementById("member_update").style.display = "none";
		document.getElementById("member_buy_list").style.display = "none";
		document.getElementById("member_donation_list").style.display = "none";
		document.getElementById("member_event_list").style.display = "none";
	};
</script>
<body>
	<jsp:include page="top.jsp" flush="false"></jsp:include>

	<div class="mypage_wrap">
		<div class="mypage_menu">
			<ul>
				<li><button type="button" onclick="member_update()">회원상세정보</button></li>
				<li><button type="button" onclick="member_buy_list()">회원구매이력</button></li>
				<li><button type="button" onclick="member_donation_list()">회원기부이력</button></li>
				<li><button type="button" onclick="member_event_list()">회원응모이력</button></li>
				<li><button type="button" onclick="member_winner_list()">회원당첨이력</button></li>
			</ul>
		</div>
		<div class="member_update" id="member_update" style="display: block; overflow: auto;">
			<div class="member_update_title">
				<strong>회원 정보 수정</strong>
			</div>
			<div class="w3-content w3-container w3-margin-top">
				<div class="w3-container w3-card-4">
					<div class="w3-center w3-large w3-margin-top">
						<h3>My Page</h3>
					</div>
					<div>
						<form id="myForm" action="../member/update_mypage.do"
							method="post">
							<p>
								<label>Email</label> 
								<input class="w3-input" type="text" id="email" name="email" readonly value="${sessionScope.sessionEmail}">
							</p>
							<p>
								<label>전화번호</label> <input class="w3-input" type="text" id="tel" name="tel" value="${ member.email }" required>
							</p>
							<p>
								<label>주소</label> 
								<input class="w3-input" type="text" id="addr1
								" name="addr1" value="${ member.email }" required> 
								<input class="w3-input" type="text" id="addr2" name="addr2" value="${ member.email }" required> 
								<input class="w3-input" type="text" id="addr3" name="addr3" value="${ member.email }" required>
							</p>
							<p class="w3-center">
								<button type="submit" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">회원정보변경</button>
							</p>
						</form>
						<br />
						<form id="pwForm" action="../member/update_pw.do" method="post">
							<input type="hidden" name="id" value="${ member.id }">
							<p>
								<label>비밀번호</label> <input class="w3-input" id="old_pw" name="old_pw" type="password" required>
							</p>
							<p>
								<label>새 비밀번호</label> <input class="w3-input" id="pw" name="pw" type="password" required>
							</p>
							<p>
								<label>비밀번호 확인</label> <input class="w3-input" type="password" id="pw2" type="password" required>
							</p>
							<p class="w3-center">
								<button type="submit" id="joinBtn" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">비밀번호변경</button>
							</p>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="member_buy_list" id="member_buy_list" style="display: none; overflow: scroll;">
			<div class="member_buy_list_title">
				<strong>회원 구매이력</strong>
			</div>
			ddd
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