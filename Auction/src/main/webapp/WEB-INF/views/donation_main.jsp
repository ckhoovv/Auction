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
		<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
		<link href="resources/css/donation_main.css" rel="stylesheet" type="text/css" />
		<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
		<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    	<script type="text/javascript" src="resources/js/main.js" charset="UTF-8"></script>
    	<script type="text/javascript" src="resources/js/progressbar.js" charset="UTF-8"></script>
	</head>
	<body>
		<!-- 로그인후에 상단바 -->
		<jsp:include page="top_login.jsp" flush="false"></jsp:include>
		
		<!-- 기부관련 슬라이드  -->
		<div class="home__slider">
			<div class="bxslider">
				<div> <img src="resources/img/test.jpg" alt="그림1" style="width: 1920px;height: 635px;"> </div>
				<div> <img src="resources/img/test1.jpg" alt="그림2" style="width: 1920px;height: 635px;"> </div>
				<div> <img src="resources/img/test2.png" alt="그림2" style="width: 1920px;height: 635px;"> </div>
				<div> <img src="resources/img/test3.jpg" alt="그림2" style="width: 1920px;height: 635px;"> </div>
				<div> <img src="resources/img/test4.jpg" alt="그림2" style="width: 1920px;height: 635px;"> </div>
			</div>
		</div>
		<!-- --------------기부body부분---------------->
		<hr style="color: black; size: 100px;">
		<div class="donation_card_body">
			<div class="donation_card">
				<ul>
					<!-- 기부카드 첫번째줄 -->
					<!-- 간단한 총 기부참여자 및 기부금액  -->
					<li class="all_donation">
						<a href="#" class="all_donation_card">
							<span class="donation_label">기부</span>
							<strong class="all_donation_title">
							당신의 참여가
							<br> 
							변화의 시작입니다.</strong>
							<!-- 참여인원 및 총기부금액표시 -->
							<dl class="donation_now">
								<dt class="dt_title">
									<i class="people">참여</i>
								</dt>
								<dd class="dd_content">
									<span class="point">1,234,111</span>명
								</dd>
								 
								<dt class="dt_title">
									<i class="people">기부금액</i>
								</dt>
								<dd class="dd_content">
									<span class="point">111,112,341</span>원
								</dd>
							</dl>
						</a>
					</li>
					</ul>
					<!-- 기부항목 -->
					<ul>
					<%
						for(int i = 1; i < 8; i++) {
					%>
					<li class="card_contents" style="float: left;">
						<div class="card_header">
						<a href="donation_detail.jsp" style="text-decoration: none;">
							<img src="resources/img/donation.jpg">
							<h1 class="card_title">기부제목</h1>
							<p>이랜드하당재가센터</p>
						</a>
							<div class="graph_wrap">
								<div class="graph_bar">
									<span class="donation_bar" style="width: 24%"></span>
								</div>
								<strong class="donation_percent">25
								<span>%</span>
								</strong>
								<strong class="donation_money">
									100,000
									<span class="text">원</span>
								</strong>
							</div>
						</div>
					</li>
					<%
						}
					%>
					</ul>
			</div>
		</div>
		
		<!-- --------------기부footer부분-------------- -->
		<div class="footcopy">
			<div class = "container">
				<div class="footmenu">
					<a href="#"><b>회사소개</b></a>
					<a href="#"><b>이용약관</b></a>
		            <a href="#"><b>개인정보취급방침</b></a>
		            <a href="#"><b>이메일무단수집거부</b></a>
		            <a href="#"><b>고객센터</b></a>
		            <a href="#"><b>앱 소개</b></a>
				</div>
				<div class="footcopydetail">
					<address>
						상호명 : (주)사조옥션 / 대표이사: 사조 / 주소: 서울특별시 서울특별시 동작구 장승배기로 171 서울특별시 동작구 장승배기로 171 노량진아이비빌딩 3층노량진아이비빌딩 3층
						<br>
						Tel: 02-111-1111 Fax : 02-222-2222 메일 : sajo@sajo.co.kr
						<br>
						<span class ="footvisible">사업자등록 : 101-81-52101 통신판매업 신고번호 : 제01 - 2225호</span> 
					</address>
					<p>
						사조옥션에서 등록된 오픈마켓 상품은 개별판매자가 시스템을 이용하여 등록한 것으로서 사조는 등록된 상품과 그 내용에 대하여 일체의 책임을 지지 않습니다.
		      		</p>
		      		<p>
		      			copyright(c) 1999, sajoauction,lnc All fights resrved
		      		</p>
	      		</div>
	      	</div>
		</div>
	</body>
</html>