<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
		<head>
			<meta charset="UTF-8">
			<title>Insert title here</title>
			<link href="resources/css/donation_detail.css" rel="stylesheet" type="text/css" />
			<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
		<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    	<script type="text/javascript" src="resources/js/main.js" charset="UTF-8"></script>
		</head>
	<body>
		<!-- 로그인후에 상단바 -->
		<jsp:include page="top_login.jsp" flush="false"></jsp:include>
		
		<div class="container">
		<!-- 기부 배너스크롤 -->
		<div class="banner_scroll">
			<div class="graph_wrap">
				<div class="graph_status">
					<span class="per">
						<strong class="num">24</strong>
						%
					</span>
				</div>
				<div class="graph_bar">
					<span class="donation_bar" style="width: 24%"></span>
				</div>
				<div class="term_area">
					<p>
						<strong>${dto.dona_start_yy}.${dto.dona_start_mm}.${dto.dona_start_dd}
								~
								${dto.dona_end_yy}.${dto.dona_end_mm}.${dto.dona_end_dd}</strong>
						<span>까지</span>
					</p>
					<div>
						<span class="d_day">
						D
						<em class="bar">-</em>
						20
						</span>
					</div>
				</div>
				<div class="num_area">
					<p class="status_num">
						<strong>${count.dona_money}</strong>
						<span>원</span>
					</p>
					<p class="purpose_num">
						<strong>6,000,000</strong>
						<span>원 목표</span>
					</p>
				</div>
				<div class="account_area">
					<p class="my_account">
						<span>내 보유금액</span>
						<strong>10,000</strong>
						<span>원</span>
					</p>
				</div>
				<div class="input_area">
					<span class="money">
						<input type="text">
						<span>원</span>
					</span>
				</div>
			</div>
				<div class="donation_btn">
					<a href="#">
						<img src="resources/img/donation_btn.png" alt="모금함 기부하기">
					</a>
				</div>
		</div>
			<div class="collect_wrap">
				<div class="collect_content">
					<h3 class="title">${dto.dona_tit}</h3>
					<div class="tab_cont">
						<img alt="" src="resources/img/donation_detail_sub.jpg">
						<img alt="" src="resources/img/donation_detail.jpg">
					<ul class="intro_lst editor_base">
						<li>
							<dl>
								<dt id="paragraphTitle">${dto.dona_tit_sub}</dt>
								<dd id="paragraphContent">${dto.dona_con}
								<br>
								<br>
								어린 시절의 스트레스는 커가며 나아지는 경우도 있지만, 방치되면 아동 우울증과 집중력 장애(ADHD)로 나타나고 성인이 되어서는 조현병이나 성인 우울증으로 발전하기도 합니다. 아동 청소년기 스트레스의 주요 원인은 가정환경, 교우 관계, 학업성적 등으로 다양하게 나타나며 어릴 때는 가정환경이 주된 이유로 나오나, 자랄수록 학업성적으로 인한 요인이 높게 응답하였습니다. 그리고 가정의 경제적 형편이 좋지 않은 아이들에게는 이러한 스트레스가 더 큰 것으로 나타났습니다.
								</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt id="paragraphTitle">미술심리치료가 불러온 변화</dt>
								<dd id="paragraphContent">"정우(가명)학생이 처음 프로그램에 참여했을 때의 모습이 아직도 기억에 남습니다. 다른 학생들과 달리 모자를 푹 눌러써서 눈조차 보이지 않았습니다. 또래들보다 체구가 작고, 목소리도 작았던 정우는 그림을 그릴 때 진지했습니다. 정우의 그림에서는 주변 사람에게 받은 상처들이 드러났고, 아픔들이 전해졌습니다. 아이가 말로 하지 못한 표현들이 그림에는 고스란히 드러납니다. 그 과정을 통해 쌓였던 감정들이 때로는 해소되기도 하고 그 당시의 상황들을 재해석하면서 나아지기도 합니다." (미술치료 전문가 평가 내용 中)
								<br>
								<br>
								프로그램이 끝날 당시 정우는 전보다 말 수가 늘어갔으며, 마지막 날 선생님에게 더 하면 안되냐고 물었다고 합니다. 다른 사람과 이야기하기 두려워했던 정우의 닫힌 마음이 조금씩 열리게 된 것은 아닐까요?
								</dd>
							</dl>
						</li>
						<li>
							<dl>
								<dt id="paragraphTitle">아이들의 마음 치유에 함께 동참해주세요.</dt>
								<dd id="paragraphContent">글로벌케어는 지난 상반기 금천구에 있는 78명의 아이와 학생을 대상으로 미술심리치료 프로그램을 진행하였습니다. 지난 상반기에도 해피빈을 통한 후원이 이어져 프로그램을 성공적으로 마칠 수 있었습니다.
								<br>
								<br>
								올 하반기에는 구로구에 있는 차상위계층, 다문화, 다자녀, 편부모 가정의 아이들 약 80명을 대상으로 미술심리치료 프로그램을 개설하고자 합니다. 총 10회에 걸쳐 그림그리기, 공작활동 뿐 아니라 요리와 같은 창작활동을 통해 아이들이 내면 지닌 감정들을 자연스럽게 표출되도록 돕겠습니다.
								<br>
								<br>
								후원자님의 관심과 적극적인 참여를 통해 아이들이 심리적인 어려움을 극복할 수 있도록 도와주세요.
								</dd>
							</dl>
						</li>				
					</ul>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>