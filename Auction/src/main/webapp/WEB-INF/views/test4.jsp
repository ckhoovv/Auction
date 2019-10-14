<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<%
	String ctx = request.getContextPath(); //콘텍스트명 얻어오기.
%>

<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="resources/css/sell_basic.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/sellbasic.css">
<link rel="stylesheet" type="text/css" href="resources/css/common.css">


<script type="text/javascript" src="resources/js/main.js"
	charset="UTF-8"></script>


<!-- SmartEditor를 사용하기 위해서 다음 js파일을 추가 (경로 확인) -->

<script type="text/javascript"
	src="<%=ctx%>/resources/SE2/js/HuskyEZCreator.js" charset="utf-8"></script>

<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.9.0.min.js"></script>

<script type="text/javascript">
	var oEditors = [];

	$(function() {
		nhn.husky.EZCreator.createInIFrame({
			oAppRef : oEditors,
			elPlaceHolder : "ir1", //textarea에서 지정한 id와 일치해야 합니다. 
			//SmartEditor2Skin.html 파일이 존재하는 경로
			sSkinURI : "/smarteditorSample/SE2/SmartEditor2Skin.html",
			htParams : {
				// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseToolbar : true,
				// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
				bUseVerticalResizer : true,
				// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
				bUseModeChanger : true,
				fOnBeforeUnload : function() {
				}
			},

			fOnAppLoad : function() {
				//기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용
				oEditors.getById["ir1"].exec("PASTE_HTML", [ "" ]);
			},
			fCreator : "createSEditor2"
		});
		//저장버튼 클릭시 form 전송

		$("#save").click(function() {
			oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);
			var jbText = $('#title').val();
			var jbTextArea = $('#ir1').val();

			/*if(jbText=='' || jbTextArea=='')*/
			if (jbText == '') {
				alert("제목을 입력 해주세요.");
			} else {
				$("#frm").submit();
			}
		});

	});
</script>

</head>
<body>
	<jsp:include page="top.jsp" flush="false"></jsp:include>
	<form id="frm" action="update.do" method="post">
		<div class="item-register">
			<ul>
				<li class="prd-name">
				<input type="hidden" name="a_num" value="${dto.a_num }">
					<h4>상품명</h4> <input name="a_title" type="text"
					id="title" size="82" class="text" value="${dto.a_title }" style="width: 540px;">
					<p class="tip">
						<span>자가소비 목적으로 해외에서 직구한 상품을 온라인 등을 통해 되파는 경우, <br>관세법
							위반으로 형사처벌 대상이 되오니 유의해 주시기 바랍니다.
						</span>
					</p>
				</li>
				<li class="prd-price" data-linked-tooltip="#layerService2"
					data-offset-top="31">
					<h4>가격</h4>
					<div class="prd-price-area layer-opened">
						<!-- 레이어 -->
						<div id="layersauction" class="layers-table"
							style="display: block;">
							<div id="AddTerm"></div>
							<table>
								<colgroup>
									<col style="width: 16%">
									<col style="width: 84%">
								</colgroup>
								<tbody>
									<tr>
										<th>경매 시작가</th>
										<td><input id="AuctStartPrice" class="txt" maxlength="9" value="${dto.a_startmoney }"
											size="9" type="text" name="a_startmoney"
											style="text-align: Right; ime-mode: disabled; width: 171px; text-align: right; ime-mode: disabled; padding-right: 9px;">
											원</td>
									</tr>
									<tr>
										<th>경매 시작시간</th>
										<td><div style="margin-top: 17px">
												<Strong id="start_date"
													style="font-size: 15px; color: #138D75;"></Strong>
											</div></td>
									</tr>
									<tr>
										<th>경매 마감시간</th>
										<td class="deadline"><input name="a_endmonth"
											id="EndMonth" maxlength="2" class="txt" type="text" value="${dto.a_endmonth }"
											style="text-align: Right; ime-mode: disabled; text-align: center; width: 37px">월 
											<input name="a_endday" id="EndDay" maxlength="2" class="txt" type="text" value="${dto.a_endday }"
											style="text-align: Right; ime-mode: disabled; text-align: center; width: 35px">일 
											<input name="a_endhour" id="EndHour" maxlength="2" class="txt" type="text" value="${dto.a_endhour }"
											style="text-align: Right; ime-mode: disabled; text-align: center; width: 35px;">시
											<input name="a_endmin" id="EndMin" maxlength="2" class="txt" type="text" value="${dto.a_endmin }"
											style="text-align: Right; ime-mode: disabled; text-align: center; width: 35px;">분
											<p>※ 경매 기간은 월/일 만 설정 가능합니다.</p></td>
									</tr>
								</tbody>
							</table>
						</div>
						<!-- //레이어 -->
					</div> <script type="text/javascript">
						var dat = new Date();
						var year = dat.getFullYear();
						var month = (dat.getMonth() + 1);
						var day = dat.getDate();
						var hour = dat.getHours();
						var min = dat.getMinutes();
						document.getElementById("start_date").innerHTML = (year
								+ "년" + month + "월" + day + "일" + hour + "시"
								+ min + "분");
					</script>
				</li>
				<li class="prd-photo" data-linked-tooltip="#layerService3"
					data-offset-top="61">
					<h4>사진</h4>
					<div class="prd-photo-upload">
						<div class="prd-photo-left">
							<table class="img-uploadbox">
								<tbody>
									<tr>
										<td align="center" style="width: 286px; height: 286px;"><img
											class="img-preview01" id="imgGoodsImage01"
											name="imgGoodsImage01"
											src="http://pics.auction.co.kr/sell/basic/img_no_286x286.gif"
											alt="" style="border: 0px; position: relative; z-index: 1;">
											<span id="tdnPaint_upload01" class="btn-upload"
											style="display: inline; z-index: 1;"> <input
												type="file" name="fileName1"><br>
										</span></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</li>
				<li>
					<h4>내용</h4>
					<div style="width: 100%; text-align: center; margin-top: 30px;">
						<div style="display: block;">

							<table>
								<tr>
									<td width="750px"><textarea rows="10" cols="30" id="ir1"
											name="a_content" style="width: 750px; height: 400px;">${dto.a_content }</textarea></td>
								</tr>
							</table>
						</div>
					</div>
				</li>

				<li class="deilve" data-linked-tooltip="#layerService4"
					data-offset-top="-5">
					<h4>배송방법 &amp; 배송비</h4>
					<ul class="deilve-kind">
						<li>
						<label for = "a_drive"> 
						<input type="radio" name="a_drive" value="택배"> 택배
						<input type="radio" name="a_drive" value="직접전달"> 직접전달
						</label>
						</li>
					</ul>

				</li>
				<li class="addition" id="addService">
					<!-- 열기/닫기 버튼 클릭 시 layer-opened 클래스 추가 -->
					<ul class="add-services" data-offset-top="-35"
						data-offset-left="-5">

						<li id="FeeSellSB"><span>판매서비스 이용료 : 구매자가 카드 결제 시 </span><span
							class="num">3%</span>, 현금결제 시 <span class="num">1.5%</span></li>
						<li class="point-dark" id="AuctMsg" style="display: block;"><strong>경매상품이므로</strong>
							<strong class="point-blue"><span class="point-blue">최종
									낙찰가에 따라 </span></strong>정산 예정금액이 달라지며,<strong class="point-blue"> 이용료는
								판매대금 정산 시 </strong>차감됩니다.</li>
					</ul>
				</li>
				<li><input type="button" id="save" value="저장" /> <input
					type="button" onclick="history.back()" value="취소" /></li>

			</ul>
		</div>
	</form>
</body>
</html>