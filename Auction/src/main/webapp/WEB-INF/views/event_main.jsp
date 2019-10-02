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
		<link href="resources/css/event_main.css" rel="stylesheet" type="text/css" />
		<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
		<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    	<script type="text/javascript" src="resources/js/main.js" charset="UTF-8"></script>
    	<script type="text/javascript" src="resources/js/event_alert.js" charset="UTF-8"></script>
    	<script type="text/javascript" src="resources/js/popup.js" charset="UTF-8"></script>
	</head>
	<body>
		<!-- 로그인후에 상단바 -->
		<jsp:include page="top.jsp" flush="false"></jsp:include>
		<!-- --------------응모body부분---------------->
		<!-- 이벤트 메인 이미지 -->
		<div class="event_top_img">
			<img class="main_img" alt="" src="resources/img/event_main.gif">
		</div>
		<!-- 당첨자 보기 -->
		<div class="winner">
			<span class="now">
				<!-- 레이어 선택시  focus 위치 -->
				<span>나의 응모권수</span>
				<strong class="mycoupon_cnt">100</strong>개
			</span>
			<button type="button" class="winner_view" onclick="popup();">당첨자 보기</button>
		</div>
		<div class="product_banner">
			<strong class="banner_title">이달의 경품</strong>
			<div class="end_event">
				<strong class="end_date">10월 31일 마감</strong>
			</div>
		</div>
		<div class="event_list">
		<!-- 응모 경품 첫번째줄 -->
				<% 
				for(int i =0; i<3; i++) { 
				%>
			<div class="product_list">
				<ul class="event_ul">
					<li class="product_img"> 
						<img src="resources/img/event_product<%= i %>.jpg">
						<div class="event_coupon">
							<img style="width: 54px; height: 56px; border: 0px;" alt="응모권 300개" src="resources/img/event300.gif">
						</div>
					</li>
					<li class="product_content">
							<h1 class="product_title">LG 노트북</h1>
							<span>응모권  
								<strong class="coupon_amount">300</strong>개 X
									<input class="input_count" id="monthlyApply<%= i %>" type="text">회
								<strong class="all_coupon" id="monthlyApply<%= i %>Sum" style="color: #B7950B;">총 0개</strong>
							</span>
						<button class="event_btn" onclick="applyCheck('300','monthlyApply<%= i %>');">응모하기</button>
						<br>
							<span class="event_count">
									현재
								<strong class="all_count">123</strong>
									건 응모중
							</span>
						<!-- 응모레이어 모음 -->
						
						<div class="ly_check" id="monthlyApply<%= i %>LayerCnt" style="display: none;">
							<strong>응모횟수를 입력해주세요.</strong>
							<br>
							<button type="button" onclick="closeLayer('monthlyApply<%= i %>LayerCnt');" style="cursor: pointer;">확인</button>
						</div>
						
						<div class="ly_check" id="monthlyApply<%= i %>LayerApply" style="display: none;">
							응모시
							<strong id="monthlyApply<%= i %>SumView">총 0개</strong>
							를 차감합니다.
							<br>
							응모 하시겠습니까?
							<br>
							<button type="button" onclick="applyBtn('monthlyApply<%= i %>');">확인</button>
							<button type="button" onclick="closeLayer('monthlyApply<%= i %>LayerApply');" style="cursor: pointer;">취소</button>
						</div>
						
						<div class="ly_check" id="monthlyApply<%= i %>LayerLack" style="display: none;">
							응모권이 부족합니다.
							<br>
							<strong>보유하신 응모권을  확인해주세요.</strong>
							<br>
							<button type="button" onclick="closeLayer('monthlyApply<%= i %>LayerLack');" style="cursor: pointer;">확인</button>
						</div>
					</li>
				</ul>
			</div>
					<% 
					} 
					%>
			
			<!-- 응모 경품 두번째줄 -->
			<% 
				for(int i = 3; i<6; i++) { 
			%>
			<div class="product_list">
				<ul class="event_ul">
					<li class="product_img">
						<img src="resources/img/event_product<%= i %>.jpg">
						<div class="event_coupon">
							<img style="width: 54px; height: 56px; border: 0px;" alt="응모권 200개" src="resources/img/event200.gif">
						</div>
					</li>
					<li class="product_content">
						<h1 class="product_title">에어프라이기</h1>
							<span>응모권  
								<strong class="coupon_amount">200</strong>개 X
									<input class="input_count" id="monthlyApply<%= i %>" type="text" style="width: 26px; height: 14px; margin: 0 5px;">회
								<strong class="all_coupon" id="monthlyApply<%= i %>Sum" style="color: #B7950B;">총 0개</strong>
							</span>
						<button class="event_btn" onclick="applyCheck('200','monthlyApply<%= i %>');">응모하기</button>
						<br>
							<span class="event_count">
									현재
								<strong class="all_count">123</strong>
									건 응모중
							</span>
							<!-- 응모레이어 모음 -->
						<div class="ly_check" id="monthlyApply<%= i %>LayerCnt" style="display: none;">
							<strong>응모횟수를 입력해주세요.</strong>
							<br>
							<button type="button" onclick="closeLayer('monthlyApply<%= i %>LayerCnt');" style="cursor: pointer;">확인</button>
						</div>
						<div class="ly_check" id="monthlyApply<%= i %>LayerApply" style="display: none;">
							응모시
							<strong id="monthlyApply<%= i %>SumView">총 0개</strong>
							를 차감합니다.
							<br>
							응모 하시겠습니까?
							<br>
							<button type="button" onclick="applyBtn('monthlyApply<%= i %>');">확인</button>
							<button type="button" onclick="closeLayer('monthlyApply<%= i %>LayerApply');" style="cursor: pointer;">취소</button>
						</div>
						
						<div class="ly_check" id="monthlyApply<%= i %>LayerLack" style="display: none;">
							응모권이 부족합니다.
							<br>
							<strong>보유하신 응모권을  확인해주세요.</strong>
							<br>
							<button type="button" onclick="closeLayer('monthlyApply<%= i %>LayerLack');" style="cursor: pointer;">확인</button>
						</div>
					</li>
				</ul>
			</div>
			<% 
				} 
			%>
			
			<!-- 응모 경품 세번째줄 -->
			<% 
				for(int i = 6; i<9; i++) { 
			%>
			<div class="product_list">
				<ul class="event_ul">
					<li class="product_img">
						<img src="resources/img/event_product<%= i %>.jpg">
						<div class="event_coupon">
							<img style="width: 54px; height: 56px; border: 0px;" alt="응모권 100개" src="resources/img/event100.gif">
						</div>
					</li>
					<li class="product_content">
						<h1 class="product_title">나이키 더플백</h1>
							<span>응모권  
								<strong class="coupon_amount">100</strong>개 X
									<input class="input_count" id="monthlyApply<%= i %>" type="text" style="width: 26px; height: 14px; margin: 0 5px;">회
								<strong class="all_coupon" id="monthlyApply<%= i %>Sum" style="color: #B7950B;">총 0개</strong>
							</span>
						<button class="event_btn" onclick="applyCheck('100','monthlyApply<%= i %>');">응모하기</button>
						<br>
							<span class="event_count">
									현재
								<strong class="all_count">123</strong>
									건 응모중
							</span>
							
								<!-- 응모레이어 모음 -->
						<div class="ly_check" id="monthlyApply<%= i %>LayerCnt" style="display: none;">
							<strong>응모횟수를 입력해주세요.</strong>
							<br>
							<button type="button" onclick="closeLayer('monthlyApply<%= i %>LayerCnt');" style="cursor: pointer;">확인</button>
						</div>
						<div class="ly_check" id="monthlyApply<%= i %>LayerApply" style="display: none;">
							응모시
							<strong id="monthlyApply<%= i %>SumView">총 0개</strong>
							를 차감합니다.
							<br>
							응모 하시겠습니까?
							<br>
							<button type="button" onclick="applyBtn('monthlyApply<%= i %>');">확인</button>
							<button type="button" onclick="closeLayer('monthlyApply<%= i %>LayerApply');" style="cursor: pointer;">취소</button>
						</div>
						
						<div class="ly_check" id="monthlyApply<%= i %>LayerLack" style="display: none;">
							응모권이 부족합니다.
							<br>
							<strong>보유하신 응모권을  확인해주세요.</strong>
							<br>
							<button type="button" onclick="closeLayer('monthlyApply<%= i %>LayerLack');" style="cursor: pointer;">확인</button>
						</div>
					</li>
				</ul>
			</div>
			<% 
				} 
			%>
		</div>	
		<!-- --------------footer부분-------------- -->
		 <jsp:include page="footer.jsp" flush="false"></jsp:include>
	</body>
</html>