<%@page import="com.auction.project.DTO.E_MainDTO"%>
<%@page import="com.auction.project.DTO.E_WinnerDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
		<head>
			<meta charset="UTF-8">
			<title>응모 이벤트 관리</title>
		</head>
		<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
		<link href="resources/css/admin_event.css" rel="stylesheet" type="text/css" />	
	<body>
	<!-- admin_main_top -->
	<jsp:include page="adminTop_login.jsp" flush="false"></jsp:include>
		
		<div class="manage_winner">
			<div class="winner_btn">
				<strong>당첨자 및 응모 관리</strong>
				<form action="winner_insert.do">
					<button type="submit">당첨자뽑기</button>
					<input type="text" name="e_num">
				</form>
			</div>
			<div class="winner_list">
			<strong style="margin-left: 10px; color: #A93226;">★당첨자 관련</strong>
				<ul>
					<li>
						<ul>
							<li style="float: left; margin-right: 110px;"><strong>경품 번호</strong></li>
							<li style="float: left; margin-right: 30px;"><strong>경품명</strong></li>
							<li style="float: right; margin-right: 20px;" ><strong>이메일</strong></li>
							<li style="float: right; margin-right: 50px;"><strong>이름</strong></li>
						</ul>					
					</li>
					<% 
					List<E_WinnerDTO> winner_list = (List<E_WinnerDTO>)request.getAttribute("winnerAll");
					for(int i = 0; i<winner_list.size(); i++) {
						E_WinnerDTO dto = winner_list.get(i);
					%>
					<li>
						<ul>
							<li style="float: left; margin-right: 110px;"><%= dto.getE_num() %></li>
							<li style="float: left; margin-right: 30px;"><%= dto.getE_product() %></li>
							<li style="float: right; margin-right: 20px;" ><%= dto.getMember_email() %></li>
							<li style="float: right; margin-right: 50px;"><%= dto.getName() %></li>
						</ul>
					</li>	
					<% } %>
				</ul>
			</div>
			<div class="event_list">
				<strong style="margin-left: 10px; color: #A93226;">★응모 이벤트 관련</strong>
				<ul>
					<li>
						<ul>
							<li style="float: left; margin-right: 110px;"><strong>경품 번호</strong></li>
							<li style="float: left; margin-right: 30px;"><strong>경품명</strong></li>
							<li style="float: right; margin-right: 20px;" ><strong>경품 갯수</strong></li>
						</ul>					
					</li>
					<% 
					List<E_MainDTO> e_main = (List<E_MainDTO>)request.getAttribute("e_main");
					for(int i =0; i<e_main.size(); i++) {
						E_MainDTO dto = e_main.get(i);
					%>
					<li>
						<ul>
							<li style="float: left; margin-right: 110px;"><%= dto.getE_num() %></li>
							<li style="float: left; margin-right: 30px;"><%= dto.getE_product() %></li>
							<li style="float: right; margin-right: 20px;" ><%= dto.getE_amount() %>개</li>
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