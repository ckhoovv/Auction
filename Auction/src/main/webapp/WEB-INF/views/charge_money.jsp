<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
		<head>
			<meta charset="UTF-8">
			<title>Insert title here</title>
		</head>
		
		<style type="text/css">
			.charge_wrap {
				width: 700px;
				height: 200px;
				border: 1px solid black;
				margin-left: 30%;
				margin-bottom: 300px;
			}
			.charge_tit {
			width: 700px;
			margin-top: 150px;
			margin-left: 30%;
			text-align: center;
			}
			.charge_tit strong{
				text-align: left;
				font-size: 50px;
			}
			.charge_wrap strong{
				font-size: 20px;
				margin-left: -100px;
				color: #114da5;
			}
			.charge_money {
				float:left;
				width: 100px;
				height: 171px;
				background: #A6ACAF;
				margin-top: 29px;
				text-align: center;
			}
			.charge_detail {
				float: left;
				width: 600px;
				height: 171px;
				margin-top: 2px;
				background: #F2F3F4;
			}
			.charge_btn {
				width:595px;
				height: 40px;
				margin-left: 4px;
				margin-top: 15px;
			}
			.charge_btn button{
				width: 80px;
				height: 40px;
				background-color: #fff;
				border: 1px solid #2ea5b9;
				color:#2ea5b9;
				cursor: pointer;
			}
			.input_money {
				width:570px;
				height: 40px;
				margin-left: 14px;
				margin-top: 15px;
			}
			.input_money input{
				width: 200px;
				height: 34px;
			}
			.finally_charge {
				width:570px;
				height: 40px;
				margin-left: 14px;
				margin-top: 8px;
			}
			.finally_charge button{
				width: 100px;
				height: 40px;
				margin-left: 220px;
				background-color: #114da5;
				border: none;
				color:#fff;
				cursor: pointer;
			}
		</style>
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
					<button type="button">1000원</button>
					<button type="button">5000원</button>
					<button type="button">10000원</button>
					<button type="button">50000원</button>
					<button type="button">100000원</button>
					<button type="button">500000원</button>
					<button type="button">1000000원</button>
				</div>
				<div class="input_money">
					<input type="text"> 원
				</div>
				<div class="finally_charge">
					<button type="button">충전하기</button>
				</div>
			</div>
		</div>
		
		
		
		<!-- --------------경매footer부분-------------- -->
		<jsp:include page="footer.jsp" flush="false"></jsp:include>
	</body>
</html>