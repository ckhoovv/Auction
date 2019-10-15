<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/common3.css">
<link rel="stylesheet" type="text/css" href="resources/css/common4.css">
<link rel="stylesheet" type="text/css" href="resources/css/app.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/vip_group.css">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						setViewTime = function() {
							var a_endmonth = $("#a_endmonth").val();
							var a_endday = $("#a_endday").val();
							var a_endhour = $("#a_endhour").val();
							var a_endmin = $("#a_endmin").val();
							var a_endyear = 2019;

							var now = new Date();
							var dat2 = new Date(a_endyear, a_endmonth - 1,
									a_endday, a_endhour, a_endmin);

							// 날짜 차이 알아 내기
							var diff = dat2 - now;

							var currDay = 24 * 60 * 60 * 1000; // 시 * 분 * 초 * 밀리세컨
							var currHour = 60 * 60 * 1000; // 분 * 초 * 밀리세컨
							var currMin = 60 * 1000; // 초 * 밀리세컨

							var day = parseInt(diff / currDay);
							var hour = parseInt(diff / currHour);
							var min = parseInt(diff / currMin);

							var viewHour = hour - (day * 24);
							var viewMin = min - (hour * 60);

							var viewStr = day + "일 " + viewHour + "시 "
									+ viewMin + "분";

							if (viewMin >= 0) {
								document.getElementById("view_dday").innerHTML = (viewStr);
							} else {
								document.getElementById("view_dday").innerHTML = ("마감되었습니다.");
							}
						}
						setInterval('setViewTime()', 1000);
					});
</script>
</head>
<body>
	<jsp:include page="top.jsp" flush="false"></jsp:include>
	<form id="frm" action="moneyupdate.do" method="post">
		<div class="item-topinfowrap">
			<div class="item-topgallerywrap">
				<div class="thumb-gallery uxecarousel alone">
					<div class="viewerwrap">
						<ul class="viewer">
							<li class="on"><img
								src="resources/a_productImg/${dto.a_num }.jpg"></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="item-topinfo">
				<div id="hdivItemInfo"></div>
				<h1 class="itemtit">

					<span class="text__item-title">${dto.a_title }</span>
				</h1>
				<div class="price_wrap">
					<div class="price">
						<div class="price_innerwrap">
							<span class="price_innerwrap"> <strong class="price_real">${dto.a_endmoney}<span
									class="unit">원</span></strong>
							</span>
						</div>
					</div>
				</div>
				<ul class="item-topinfo_sub uxeslide">
					<li class="delivery_item  uxeslide_item" id="liShippingInfo">
						<div class="nav">
							<p class="origin_nav_txt">
								<strong>${dto.a_drive }</strong>
							</p>
						</div>
					</li>
					<li class="origin_item uxeslide_item zlow on">
						<div class="nav">
							<span class="origin_nav_txt" style="margin-top: 10px;"><strong>마감까지
									남은 시간 : </strong><span id="view_dday"></span> </span> <input id="a_endmonth"
								type="hidden" value="${dto.a_endmonth }"> <input
								id="a_endday" type="hidden" value="${dto.a_endday }"> <input
								id="a_endhour" type="hidden" value="${dto.a_endhour }">
							<input id="a_endmin" type="hidden" value="${dto.a_endmin }">
						</div>
					</li>
					<li><input type="hidden" id="a_num" name="a_num"
						value="${dto.a_num }"> <input type="hidden"
						id="a_moneycompare" value="${dto.a_endmoney }"> <input
						type="text" id="money" name="a_endmoney"
						style="width: 500px; height: 50px;" placeholder="가격을 입력하세요"
						maxlength="11"><strong>원</strong></li>
				</ul>
				<div id="hdivOrderInfo" class="option-delivery">
					<div id="upOrderInfo">
						<fieldset>
							<div id="ucItemOrderInfo_ucItemOrderButtons_hdivBuy"
								class="item-bottombtns">
								<input type="hidden" name="a_email" value="${dto.a_email}">
								<input type="hidden" name="a_title" value="${dto.a_title }">
								<button type="button" id="buy"
									style="width: 270px; height: 60px; background: #e63740; border: 1px solid #222222; margin-right: 10px">경매하기
								</button>
								<button class="btn_cart" type="button"
									onclick="location.href = 'test4.do?a_num=${dto.a_num}'">수정하기</button>
							</div>

						</fieldset>
					</div>
				</div>
			</div>

			<div style="width: 1200px;">

				<table style="width: 100%; margin-left: 250px">
					<tr>
						<td style="width: AUTO;">${dto.a_content }</td>
						<!-- 본문 내용 ! -->
					</tr>
				</table>
			</div>
		</div>
	</form>
	<script type="text/javascript">
		$("#buy").click(function() {
			var a_num = $('#a_num').val();
			var jbText = $('#money').val();
			var a_moneycompare = $('#a_moneycompare').val();
			var view_dday = $("#view_dday").val();

			if (jbText == '') {
				alert("가격을 입력하세요");
			} else {
				if (parseInt(jbText) <= parseInt(a_moneycompare)) {
					alert("더 높은 금액으로 경매하세요.")
				} else {
					alert("경매가 완료 되었습니다.");
					$("#frm").submit();
					location.href = "test3.do?a_num=" + a_num;
					window.opener.location.reload();
				}
			}
		});
	</script>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
</body>
</html>