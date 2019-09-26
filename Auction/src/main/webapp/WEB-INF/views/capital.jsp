<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- <html xmlns="http://www.w3.org/1999/xhtml"> -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>-사조 경매-</title> 
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
		<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
		<!-- <link href="resources/css/style.css" rel="stylesheet" type="text/css" /> -->
		<link href="resources/css/capitalStyle.css" rel="stylesheet" type="text/css" />
		<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
		<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    	<!-- <script type="text/javascript" src="resources/js/main.js" charset="UTF-8"></script> -->
	</head>
	<body>
		<jsp:include page="top.jsp" flush="false"></jsp:include>
		<!-- --------------경매body부분---------------->
		<div class ="visual">
			<div class="imageVisual">
				<img src="resources/img/visual.png"></img></div>
					<div class ="txtVisual">
						<p class="topTxt">전화한통으로 단박에</p>
						<h2>
							인터넷
							<strong>단박</strong>
							대출
						</h2>
						<p class="bottomTxt">
							전통한통으로 신청까지 한번에 ok
							<br>
							언제, 어디서든 클릭 한 번 쉽게!
						</p>
						 <button class="visulBtn" onclick ="location=windows.open('capitalApply.jsp')">즉시 신청하기</button>
					</div>
		</div>
		<jsp:include page="footer.jsp" flush="false"></jsp:include>
	</body>

</html>