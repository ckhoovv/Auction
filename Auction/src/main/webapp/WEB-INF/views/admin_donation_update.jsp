<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
		<head>
			<meta charset="UTF-8">
			<title>Insert title here</title>
		</head>
		<link href="resources/css/admin_donation_update.css" rel="stylesheet" type="text/css" />
	<body>
		<!-- admin_main_top -->
		<jsp:include page="adminTop_login.jsp" flush="false"></jsp:include>
		<div class="wrap">
			<div class="pop_tit">
				<strong>기부 수정창</strong>			
			</div>
		<form action="donation_update.do">
			<div class="number">
				&nbsp;●기부 번호:<input type="text" name="dona_num"><br>
			</div>
			<div class="tit">
				&nbsp;●기부 제목:<input type="text" name="dona_tit"><br>
			</div>
			<div class="sub_tit">
				&nbsp;●기부 서브 제목:<input type="text" name="dona_tit_sub"><br>
			</div>
			<div class="content">
				<span>&nbsp;●기부 내용:</span><textarea type="text" name="dona_con"></textarea>		 
			</div>
			<div class="start_date">
				&nbsp;●기부 시작(년/월/일):<input type="text" name="dona_start_yy">년	 
				<input type="text" name="dona_start_mm">월		 
				<input type="text" name="dona_start_dd">일<br>		 
			</div>
			<div class="end_date">
				&nbsp;●기부 마감(년/월/일):<input type="text" name="dona_end_yy">년	 
				<input type="text" name="dona_end_mm">월		 
				<input type="text" name="dona_end_dd">일<br>		 
			</div>
			<div class="hope_money">
				&nbsp;●기부 희망 금액:<input type="text" name="hope_money">원<br>		 
			</div>
			<div class="update_btn">
					<button type="submit">수정 완료</button>
			</div>
			</form>
		</div>
		<!-- footer -->
		<jsp:include page="footer.jsp" flush="false"></jsp:include>
	</body>
</html>