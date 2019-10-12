<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
	<link href="resources/css/charge_money.css" rel="stylesheet" type="text/css" />
	</head>
	<script type="text/javascript">
		function put_money(m){
			$("#all_money").val(m);
		}
	</script>
<body>
	<!-- 로그인후에 상단바 -->
	<jsp:include page="top.jsp" flush="false"></jsp:include>
	<div class="charge_tit">
		<strong>금액 충전</strong>
	</div>
	<div class="charge_wrap">
		<strong>● 4조머니 충전 신청</strong>
		<div class="charge_money">
			<div style="margin-top: 70px;">
				<span>충전 금액</span>
			</div>
		</div>
		<div class="charge_detail">
			<div class="charge_btn">
				<button type="button" onclick="put_money(1000)">1000원</button>
				<button type="button" onclick="put_money(5000)">5000원</button>
				<button type="button" onclick="put_money(10000)">10000원</button>
				<button type="button" onclick="put_money(50000)">50000원</button>
				<button type="button" onclick="put_money(100000)">100000원</button>
				<button type="button" onclick="put_money(500000)">500000원</button>
				<button type="button" onclick="put_money(1000000)">1000000원</button>
			</div>
			<form action="insert_money.do">
				<div class="input_money">
					<input type="hidden" name="member_email" value="${ sessionScope.sessionEmail }">
					<input type="text" id="all_money" name="money"> 원
				</div>
				<div class="finally_charge">
					<button type="submit">충전하기</button>
				</div>
			</form>
		</div>
	</div>



	<!-- --------------경매footer부분-------------- -->
	<jsp:include page="footer.jsp" flush="false"></jsp:include>
</body>
</html>