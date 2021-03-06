<%@page import="com.auction.project.DTO.E_WinnerDTO"%>
<%@page import="com.auction.project.DTO.E_ListDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
		<head>
			<meta charset="UTF-8">
			<title>당첨자 보기</title>
			<link href="resources/css/popup.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript">
			var nowMonth ='201909';
		
		</script>
		</head>
	<body>
		<div class="culture betgift">
			<div class="top" style="background: #666;">
				<h1 class="h1">응모 경품 당첨자 보기</h1>
			</div>
			<div class="contents">
				<div class="contents-bg" style="background: #fff;">
					<div style="width: 100%; text-align: right;">
						<select id="yearMonth" name="yearMonth" class="select" onchange="showWinner(this.options[this.options.selectedIndex].value)" style="width: 100px;">
							<option value="201909">2019년 09월</option>
							<option value="201908">2019년 08월</option>
						</select>
						<script type="text/javascript">
							document.getElementById("yearMonth").value=nowMonth;
						</script>
					</div>
					<div class="fixed">
						<h2 class="first">
							<img src="resources/img/pop_gift1.gif" alt="이달의 경품">
						</h2>
						<table class="dataH0102">
							<colgroup>
								<col width="15%">
								<col width="*">
								<col width="40%">
							</colgroup>
							<thead>
								<tr style="background: #FBEEE6;">
									<td>&emsp;응모기간</td>
									<td>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;경품명</td>
									<td>&emsp;&emsp;&emsp;&emsp;&emsp;당첨자</td>
								</tr>
							</thead>
							<%
							List<E_WinnerDTO> winnerAll = (List<E_WinnerDTO>)request.getAttribute("winnerAll");
							for(int i = 0; i < winnerAll.size(); i++){
								E_WinnerDTO dto = winnerAll.get(i);
							%>
								<tr>
									<td>10.01~10.31</td>
									<td><%= dto.getE_product() %></td>
									<td><%= dto.getName() %>(<%= dto.getMember_email() %>)</td>
								</tr>
							<% } %>
						</table>
					</div>
				</div>
				<div class="gift-noti">
				당첨 발표일로부터 10일 이내에 개인정보에 입력된 연락처로 개별 연락, 안내됩니다.
				<br>
				[마이페이지 > 개인정보] 에서 연락처를 반드시 확인해 주세요.
				</div>
				<div class="btnC">
					<a href="javascript:self.close();">
						<img src="resources/img/btn_close01.gif" alt="닫기">
					</a>
				</div>		
			</div>
		</div>
	</body>
</html>