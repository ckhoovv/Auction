<%@page import="com.auction.project.DTO.Donation_ListDTO"%>
<%@page import="java.io.Console"%>
<%@page import="java.util.List"%>
<%@page import="com.auction.project.DTO.DonationDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<jsp:include page="top.jsp" flush="false"></jsp:include>
		
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
									<span class="point">${count_all.member_email}</span>명
								</dd>
								<dt class="dt_title">
									<i class="people">기부금액</i>
								</dt>
								<dd class="dd_content">
									<span class="point">${count_all.dona_money}</span>원
								</dd>
							</dl>
						</a>
					</li>
					</ul>
			</div>
			
					<!-- 기부항목 -->
					<ul>
					<c:forEach items="${list}" var="list" varStatus="i">
					<li class="card_contents" style="float: left;">
						<div class="card_header">
						<a href="donation_detail.do?dona_num=<c:out value="${list.dona_num }"/>" style="text-decoration: none;">
							<img src="resources/img/<c:out value="${list.dona_num }"/>.jpg">
							<h1 class="card_title"><c:out value="${list.dona_tit }"/></h1>
						</a>
							<div class="graph_wrap">
								<div class="graph_bar">
									<span class="donation_bar" style="width: 24%"></span>
								</div>
								<strong class="donation_percent">25
								<span>%</span>
								</strong>
								<strong class="donation_money">
								
									<span class="text">원</span>
								</strong>
							</div>
						</div>
					</li>
					</c:forEach>
					</ul> 
		</div>
		
		<hr style="color: black; size: 100px;">
		
		<!-- --------------기부footer부분-------------- -->
		<jsp:include page="footer.jsp" flush="false"></jsp:include>
	</body>
</html>