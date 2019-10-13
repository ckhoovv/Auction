<%@page import="com.auction.project.DTO.DonationDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
		<head>
			<meta charset="UTF-8">
			<title>기부 관리</title>
			<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
			
			<style type="text/css">
			.donation_wrap{
				width: 850px;
				height: 700px;
				border: 1px solid black;
				margin-left: 30%;
				text-align: center;
			}
			.title {
				width: 848px;
				height: 50px;
				border-bottom: 1px solid #CACFD2;
				background: #CACFD2;
			}
			.donation_wrap strong {
				font-size: 30px;
				color: #27AE60;
				margin-left: 90px;
				
			}
			.donation_list {
				width: 848px;
				height: 650px;
				background: #D7DBDD;
			}
			.donation_list ul {
				list-style: none;
				display: table;
				text-align: center;
				margin-left: auto;
				margin-right: auto;
				
			}
			.donation_list li {
				border-bottom: 1px solid #CACFD2;
				
			}
			.donation_list button {
				width: 40px;
				height: 20px;
				font-size: 6px;
				border: 1px solid #1A5276;
				background: #7FB3D5;
				color: #fff;
			}
			.add_donation {
				width: 100px;
				height: 40px;
				float: right;
				margin-right: 10px;
				margin-top: 5px;
			}
			.add_donation button {
				width: 80px;
				height: 40px;
				font-size: 15px;
				border: 1px solid #1A5276;
				background: #7FB3D5;
				color: #fff;
			}
			
			</style>
			
		</head>
	<body>
		<!-- admin_main_top -->
		<jsp:include page="adminTop_login.jsp" flush="false"></jsp:include>
		
		<div class="donation_wrap">
			<div class="title">
				<strong>기부 전체 리스트</strong>
				<div class="add_donation">
					<button>기부 추가</button>
				</div>
			</div>
			<div class="donation_list">
				<ul>
					<li>
						<ul>
							<li style="float: left; margin-left: 10px;">기부 번호</li>	
							<li style="float: left; margin-left: 30px;">기부 제목</li>
							<li style="float: left; margin-left: 20px;">기부 시작(년,월,일)</li>
							<li style="float: left; margin-left: 20px;">기부 마감(년,월,일)</li>
							<li style="float: left; margin-left: 40px; margin-right: 40px;">기부 희망 금액</li>
							<li style="float: right; margin-right: 20px;">수정/삭제</li>
						</ul>
					</li>
					<%
					List<DonationDTO> dona_list = (List<DonationDTO>)request.getAttribute("dona_list");
						for (int i = 0; i < dona_list.size(); i++) {
						DonationDTO dto = dona_list.get(i);
					%>
					<li>
						<ul>
							<li style="float: left; margin-left: 20px;"><%= dto.getDona_num() %></li>	
							<li style="float: left; margin-left: 50px;"><%= dto.getDona_tit() %></li>
							<li style="float: left; margin-left: 60px;"><%= dto.getDona_start_yy() %>/<%= dto.getDona_start_mm() %>/<%= dto.getDona_start_dd() %></li>
							<li style="float: left; margin-left: 60px;"><%= dto.getDona_end_yy() %>/<%= dto.getDona_end_mm() %>/<%= dto.getDona_end_dd() %></li>
							<li style="float: left; margin-left: 70px; margin-right: 40px;"><%= dto.getHope_money() %>원</li>
							<li style="float: right; margin-right: 15px;">
								<form action="delete_donation.do">
									<input type="hidden" name="dona_num" value="<%= dto.getDona_num() %>">
									<button type="submit">삭제</button>
								</form>
							</li>
							<li style="float: right; margin-right: 5px;"><button>수정</button></li>
						</ul>
					</li>
					<% } %>
				</ul>
			</div>
		</div>
		
		
		
		
		
	
	
	
		<!-- footer -->
		<jsp:include page="footer.jsp" flush="false"></jsp:include>
	</body>
</html>