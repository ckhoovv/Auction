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
			<img class="main_img" alt="" src="resources/img/event_main.jpg">
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
				<strong class="end_date">9월 30일 마감</strong>
			</div>
		</div>
		<div class="event_list">
		<!-- 응모 경품 첫번째줄 -->
			<div class="product_list">
				<ul class="event_ul">
					<li class="product_img"> 
						<img src="resources/img/event_product1.jpg">
						<div class="event_coupon">
							<img style="width: 54px; height: 56px; border: 0px;" alt="응모권 300개" src="resources/img/event300.gif">
						</div>
					</li>
					<li class="product_content">
							<h1 class="product_title">LG 노트북</h1>
							<span>응모권  
								<strong class="coupon_amount">300</strong>개 X
									<input class="input_count" id="monthlyApply0" type="text" style="width: 26px; height: 14px; margin: 0 5px;">회
								<strong class="all_coupon" style="color: #B7950B;">총 0개</strong>
							</span>
						<button class="event_btn" onclick="applyCheck('300','monthlyApply0');">응모하기</button>
						<br>
							<span class="event_count">
									현재
								<strong class="all_count">123</strong>
									건 응모중
							</span>
						<!-- 응모레이어 모음 -->
						
						<div class="ly_check" id="monthlyApply0LayerCnt" style="display: none;">
							<strong>응모횟수를 입력해주세요.</strong>
							<br>
							<button type="button" onclick="closeLayer('monthlyApply0LayerCnt');" style="cursor: pointer;">확인</button>
						</div>
						
						<div class="ly_check" id="monthlyApply0LayerApply" style="display: none;">
							응모시
							<strong id="monthlyApply0SumView">응모권 300개</strong>
							를 차감합니다.
							<br>
							응모 하시겠습니까?
							<br>
							<button type="button" onclick="applyBtn('monthlyApply0');">확인</button>
							<button type="button" onclick="closeLayer('monthlyApply0LayerApply');" style="cursor: pointer;">취소</button>
						</div>
						
						<div class="ly_check" id="monthlyApply0LayerLack" style="display: none;">
							응모권이 부족합니다.
							<br>
							<strong>보유하신 응모권을  확인해주세요.</strong>
							<br>
							<button type="button" onclick="closeLayer('monthlyApply0LayerLack');" style="cursor: pointer;">확인</button>
						</div>
					</li>
				</ul>
			</div>
			<div class="product_list">
				<ul class="event_ul">
					<li class="product_img">
						<img src="resources/img/event_product.jpg">
						<div class="event_coupon">
							<img style="width: 54px; height: 56px; border: 0px;" alt="응모권 300개" src="resources/img/event300.gif">
						</div>
					</li>
					<li class="product_content">
						<h1 class="product_title">LED 마스크</h1>
							<span>응모권  
								<strong class="coupon_amount">300</strong>개 X
									<input class = "input_count" id="monthlyApply1" type="text" style="width: 26px; height: 14px; margin: 0 5px;">회
								<strong class="all_coupon" style="color: #B7950B;">총 0개</strong>
							</span>
						<button class="event_btn" onclick="applyCheck('300','monthlyApply1');">응모하기</button>
						<br>
							<span class="event_count">
									현재
								<strong class="all_count">123</strong>
									건 응모중
							</span>
						<!-- 응모레이어 모음 -->
						<div class="ly_check" id="monthlyApply1LayerCnt" style="display: none;">
							<strong>응모횟수를 입력해주세요.</strong>
							<br>
							<button type="button" onclick="closeLayer('monthlyApply1LayerCnt');" style="cursor: pointer;">확인</button>
						</div>
						<div class="ly_check" id="monthlyApply1LayerApply" style="display: none;">
							응모시
							<strong id="monthlyApply1SumView">응모권 300개</strong>
							를 차감합니다.
							<br>
							응모 하시겠습니까?
							<br>
							<button type="button" onclick="applyBtn('monthlyApply1');">확인</button>
							<button type="button" onclick="closeLayer('monthlyApply1LayerApply');" style="cursor: pointer;">취소</button>
						</div>
						
						<div class="ly_check" id="monthlyApply1LayerLack" style="display: none;">
							응모권이 부족합니다.
							<br>
							<strong>보유하신 응모권을  확인해주세요.</strong>
							<br>
							<button type="button" onclick="closeLayer('monthlyApply1LayerLack');" style="cursor: pointer;">확인</button>
						</div>
					</li>
				</ul>
			</div>
			<div class="product_list">
				<ul class="event_ul">
					<li class="product_img">
						<img src="resources/img/event_product2.jpg">
						<div class="event_coupon">
							<img style="width: 54px; height: 56px; border: 0px;" alt="응모권 300개" src="resources/img/event300.gif">
						</div>
					</li>
					<li class="product_content">
						<h1 class="product_title">삼천리 자전거</h1>
							<span>응모권  
								<strong class="coupon_amount">300</strong>개 X
									<input class="input_count" id="monthlyApply2" type="text" style="width: 26px; height: 14px; margin: 0 5px;">회
								<strong class="all_coupon" style="color: #B7950B;">총 0개</strong>
							</span>
						<button class="event_btn" onclick="applyCheck('300','monthlyApply2');">응모하기</button>
						<br>
							<span class="event_count">
									현재
								<strong class="all_count">123</strong>
									건 응모중
							</span>
						<!-- 응모레이어 모음 -->
						<div class="ly_check" id="monthlyApply2LayerCnt" style="display: none;">
							<strong>응모횟수를 입력해주세요.</strong>
							<br>
							<button type="button" onclick="closeLayer('monthlyApply2LayerCnt');" style="cursor: pointer;">확인</button>
						</div>
						<div class="ly_check" id="monthlyApply2LayerApply" style="display: none;">
							응모시
							<strong id="monthlyApply2SumView">응모권 300개</strong>
							를 차감합니다.
							<br>
							응모 하시겠습니까?
							<br>
							<button type="button" onclick="applyBtn('monthlyApply2');">확인</button>
							<button type="button" onclick="closeLayer('monthlyApply2LayerApply');" style="cursor: pointer;">취소</button>
						</div>
						
						<div class="ly_check" id="monthlyApply2LayerLack" style="display: none;">
							응모권이 부족합니다.
							<br>
							<strong>보유하신 응모권을  확인해주세요.</strong>
							<br>
							<button type="button" onclick="closeLayer('monthlyApply2LayerLack');" style="cursor: pointer;">확인</button>
						</div>
					</li>
				</ul>
			</div>
			<!-- 응모 경품 두번째줄 -->
			<div class="product_list">
				<ul class="event_ul">
					<li class="product_img">
						<img src="resources/img/event_product3.jpg">
						<div class="event_coupon">
							<img style="width: 54px; height: 56px; border: 0px;" alt="응모권 200개" src="resources/img/event200.gif">
						</div>
					</li>
					<li class="product_content">
						<h1 class="product_title">에어프라이기</h1>
							<span>응모권  
								<strong class="coupon_amount">200</strong>개 X
									<input class="input_count" id="monthlyApply3" type="text" style="width: 26px; height: 14px; margin: 0 5px;">회
								<strong class="all_coupon" style="color: #B7950B;">총 0개</strong>
							</span>
						<button class="event_btn" onclick="applyCheck('200','monthlyApply3');">응모하기</button>
						<br>
							<span class="event_count">
									현재
								<strong class="all_count">123</strong>
									건 응모중
							</span>
							<!-- 응모레이어 모음 -->
						<div class="ly_check" id="monthlyApply3LayerCnt" style="display: none;">
							<strong>응모횟수를 입력해주세요.</strong>
							<br>
							<button type="button" onclick="closeLayer('monthlyApply3LayerCnt');" style="cursor: pointer;">확인</button>
						</div>
						<div class="ly_check" id="monthlyApply3LayerApply" style="display: none;">
							응모시
							<strong id="monthlyApply3SumView">응모권 200개</strong>
							를 차감합니다.
							<br>
							응모 하시겠습니까?
							<br>
							<button type="button" onclick="applyBtn('monthlyApply3');">확인</button>
							<button type="button" onclick="closeLayer('monthlyApply3LayerApply');" style="cursor: pointer;">취소</button>
						</div>
						
						<div class="ly_check" id="monthlyApply3LayerLack" style="display: none;">
							응모권이 부족합니다.
							<br>
							<strong>보유하신 응모권을  확인해주세요.</strong>
							<br>
							<button type="button" onclick="closeLayer('monthlyApply3LayerLack');" style="cursor: pointer;">확인</button>
						</div>
					</li>
				</ul>
			</div>
			<div class="product_list">
				<ul class="event_ul">
					<li class="product_img">
						<img src="resources/img/event_product4.png">
						<div class="event_coupon">
							<img style="width: 54px; height: 56px; border: 0px;" alt="응모권 200개" src="resources/img/event200.gif">
						</div>
					</li>
					<li class="product_content">
						<h1 class="product_title">갤럭시 버즈</h1>
							<span>응모권  
								<strong class="coupon_amount">200</strong>개 X
									<input class="input_count" id="monthlyApply4" type="text" style="width: 26px; height: 14px; margin: 0 5px;">회
								<strong class="all_coupon" style="color: #B7950B;">총 0개</strong>
							</span>
						<button class="event_btn" onclick="applyCheck('200','monthlyApply4');">응모하기</button>
						<br>
							<span class="event_count">
									현재
								<strong class="all_count">123</strong>
									건 응모중
							</span>
								<!-- 응모레이어 모음 -->
						<div class="ly_check" id="monthlyApply4LayerCnt" style="display: none;">
							<strong>응모횟수를 입력해주세요.</strong>
							<br>
							<button type="button" onclick="closeLayer('monthlyApply4LayerCnt');" style="cursor: pointer;">확인</button>
						</div>
						<div class="ly_check" id="monthlyApply4LayerApply" style="display: none;">
							응모시
							<strong id="monthlyApply4SumView">응모권 200개</strong>
							를 차감합니다.
							<br>
							응모 하시겠습니까?
							<br>
							<button type="button" onclick="applyBtn('monthlyApply4');">확인</button>
							<button type="button" onclick="closeLayer('monthlyApply4LayerApply');" style="cursor: pointer;">취소</button>
						</div>
						
						<div class="ly_check" id="monthlyApply4LayerLack" style="display: none;">
							응모권이 부족합니다.
							<br>
							<strong>보유하신 응모권을  확인해주세요.</strong>
							<br>
							<button type="button" onclick="closeLayer('monthlyApply4LayerLack');" style="cursor: pointer;">확인</button>
						</div>
					</li>
				</ul>
			</div>
			<div class="product_list">
				<ul class="event_ul">
					<li class="product_img">
						<img src="resources/img/event_product5.jpg">
						<div class="event_coupon">
							<img style="width: 54px; height: 56px; border: 0px;" alt="응모권 200개" src="resources/img/event200.gif">
						</div>
					</li>
					<li class="product_content">
						<h1 class="product_title">눈 마사지기</h1>
							<span>응모권  
								<strong class="coupon_amount">200</strong>개 X
									<input class="input_count" id="monthlyApply5" type="text" style="width: 26px; height: 14px; margin: 0 5px;">회
								<strong class="all_coupon" style="color: #B7950B;">총 0개</strong>
							</span>
						<button class="event_btn" onclick="applyCheck('200','monthlyApply5');">응모하기</button>
						<br>
							<span class="event_count">
									현재
								<strong class="all_count">123</strong>
									건 응모중
							</span>
								<!-- 응모레이어 모음 -->
						<div class="ly_check" id="monthlyApply5LayerCnt" style="display: none;">
							<strong>응모횟수를 입력해주세요.</strong>
							<br>
							<button type="button" onclick="closeLayer('monthlyApply5LayerCnt');" style="cursor: pointer;">확인</button>
						</div>
						<div class="ly_check" id="monthlyApply5LayerApply" style="display: none;">
							응모시
							<strong id="monthlyApply5SumView">응모권 200개</strong>
							를 차감합니다.
							<br>
							응모 하시겠습니까?
							<br>
							<button type="button" onclick="applyBtn('monthlyApply5');">확인</button>
							<button type="button" onclick="closeLayer('monthlyApply5LayerApply');" style="cursor: pointer;">취소</button>
						</div>
						
						<div class="ly_check" id="monthlyApply5LayerLack" style="display: none;">
							응모권이 부족합니다.
							<br>
							<strong>보유하신 응모권을  확인해주세요.</strong>
							<br>
							<button type="button" onclick="closeLayer('monthlyApply5LayerLack');" style="cursor: pointer;">확인</button>
						</div>
					</li>
				</ul>
			</div>
			<!-- 응모 경품 세번째줄 -->
			<div class="product_list">
				<ul class="event_ul">
					<li class="product_img">
						<img src="resources/img/event_product6.jpg">
						<div class="event_coupon">
							<img style="width: 54px; height: 56px; border: 0px;" alt="응모권 100개" src="resources/img/event100.gif">
						</div>
					</li>
					<li class="product_content">
						<h1 class="product_title">나이키 더플백</h1>
							<span>응모권  
								<strong class="coupon_amount">100</strong>개 X
									<input class="input_count" id="monthlyApply6" type="text" style="width: 26px; height: 14px; margin: 0 5px;">회
								<strong class="all_coupon" style="color: #B7950B;">총 0개</strong>
							</span>
						<button class="event_btn" onclick="applyCheck('100','monthlyApply6');">응모하기</button>
						<br>
							<span class="event_count">
									현재
								<strong class="all_count">123</strong>
									건 응모중
							</span>
								<!-- 응모레이어 모음 -->
						<div class="ly_check" id="monthlyApply6LayerCnt" style="display: none;">
							<strong>응모횟수를 입력해주세요.</strong>
							<br>
							<button type="button" onclick="closeLayer('monthlyApply6LayerCnt');" style="cursor: pointer;">확인</button>
						</div>
						<div class="ly_check" id="monthlyApply6LayerApply" style="display: none;">
							응모시
							<strong id="monthlyApply6SumView">응모권 100개</strong>
							를 차감합니다.
							<br>
							응모 하시겠습니까?
							<br>
							<button type="button" onclick="applyBtn('monthlyApply6');">확인</button>
							<button type="button" onclick="closeLayer('monthlyApply6LayerApply');" style="cursor: pointer;">취소</button>
						</div>
						
						<div class="ly_check" id="monthlyApply6LayerLack" style="display: none;">
							응모권이 부족합니다.
							<br>
							<strong>보유하신 응모권을  확인해주세요.</strong>
							<br>
							<button type="button" onclick="closeLayer('monthlyApply6LayerLack');" style="cursor: pointer;">확인</button>
						</div>
					</li>
				</ul>
			</div>
			<div class="product_list">
				<ul class="event_ul">
					<li class="product_img">
						<img src="resources/img/event_product7.jpg">
						<div class="event_coupon">
							<img style="width: 54px; height: 56px; border: 0px;" alt="응모권 100개" src="resources/img/event100.gif">
						</div>
					</li>
					<li class="product_content">
						<h1 class="product_title">CGV 영화관람권</h1>
							<span>응모권  
								<strong class="coupon_amount">100</strong>개 X
									<input class="input_count" id="monthlyApply7" type="text" style="width: 26px; height: 14px; margin: 0 5px;">회
								<strong class="all_coupon" style="color: #B7950B;">총 0개</strong>
							</span>
						<button class="event_btn" onclick="applyCheck('100','monthlyApply7');">응모하기</button>
						<br>
							<span class="event_count">
									현재
								<strong class="all_count">123</strong>
									건 응모중
							</span>
								<!-- 응모레이어 모음 -->
						<div class="ly_check" id="monthlyApply7LayerCnt" style="display: none;">
							<strong>응모횟수를 입력해주세요.</strong>
							<br>
							<button type="button" onclick="closeLayer('monthlyApply7LayerCnt');" style="cursor: pointer;">확인</button>
						</div>
						<div class="ly_check" id="monthlyApply7LayerApply" style="display: none;">
							응모시
							<strong id="monthlyApply7SumView">응모권 100개</strong>
							를 차감합니다.
							<br>
							응모 하시겠습니까?
							<br>
							<button type="button" onclick="applyBtn('monthlyApply7');">확인</button>
							<button type="button" onclick="closeLayer('monthlyApply7LayerApply');" style="cursor: pointer;">취소</button>
						</div>
						
						<div class="ly_check" id="monthlyApply7LayerLack" style="display: none;">
							응모권이 부족합니다.
							<br>
							<strong>보유하신 응모권을  확인해주세요.</strong>
							<br>
							<button type="button" onclick="closeLayer('monthlyApply7LayerLack');" style="cursor: pointer;">확인</button>
						</div>
					</li>
				</ul> 
			</div>
			<div class="product_list">
				<ul class="event_ul">
					<li class="product_img">
						<img src="resources/img/event_product8.jpg">
						<div class="event_coupon">
							<img style="width: 54px; height: 56px; border: 0px;" alt="응모권 100개" src="resources/img/event100.gif">
						</div>
					</li>
					<li class="product_content">
						<h1 class="product_title">할리스커피 교환권</h1>
							<span>응모권  
								<strong class="coupon_amount">100</strong>개 X
									<input class="input_count" id="monthlyApply8" type="text" style="width: 26px; height: 14px; margin: 0 5px;">회
								<strong class="all_coupon" style="color: #B7950B;">총 0개</strong>
							</span>
						<button class="event_btn" onclick="applyCheck('100','monthlyApply8');">응모하기</button>
						<br>
						<span class="event_count">
									현재
								<strong class="all_count">123</strong>
									건 응모중
							</span>
								<!-- 응모레이어 모음 -->
						<div class="ly_check" id="monthlyApply8LayerCnt" style="display: none;">
							<strong>응모횟수를 입력해주세요.</strong>
							<br>
							<button type="button" onclick="closeLayer('monthlyApply8LayerCnt');" style="cursor: pointer;">확인</button>
						</div>
						<div class="ly_check" id="monthlyApply8LayerApply" style="display: none;">
							응모시
							<strong id="monthlyApply8SumView">응모권 100개</strong>
							를 차감합니다.
							<br>
							응모 하시겠습니까?
							<br>
							<button type="button" onclick="applyBtn('monthlyApply8');">확인</button>
							<button type="button" onclick="closeLayer('monthlyApply8LayerApply');" style="cursor: pointer;">취소</button>
						</div>
						
						<div class="ly_check" id="monthlyApply8LayerLack" style="display: none;">
							응모권이 부족합니다.
							<br>
							<strong>보유하신 응모권을  확인해주세요.</strong>
							<br>
							<button type="button" onclick="closeLayer('monthlyApply8LayerLack');" style="cursor: pointer;">확인</button>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<!-- --------------footer부분-------------- -->
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