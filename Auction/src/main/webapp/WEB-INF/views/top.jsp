<%@page import="com.auction.project.DTO.ChargeDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- <html xmlns="http://www.w3.org/1999/xhtml"> -->
<html>
	<head>
		<meta charset="UTF-8">
		<title>-사조 경매-</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
		<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
		<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
		<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    	<script type="text/javascript" src="resources/js/main.js" charset="UTF-8"></script>
	</head>
	<body>
		<!-- --------------경매TOP부분---------------->
		<div class="nav">
			<i class="xi-unlock-o"></i> 
	        <form id="form1" runat="server">
	        	<div>
	        		<span id="clock"></span> <br />
	        	</div>
	        </form>
			    <c:if test="${not empty sessionScope.sessionEmail}">
			        <ul class="nav-ul">
			        	<li class="nav-li">
			        		<p>
			        			<a class="nav_a" href="#">보유 금액 : ${sessionScope.sessionMoney}원</a>
			        			<button type="button" onclick="location.href='charge_money.do'">충전</button>
			        			<a class="nav_a" href="#"><b>${ sessionScope.sessionName }님 환영합니다.</b></a> 
			        			<a class="nav_a" href="sessionLogout.do">로그아웃</a> 
			        			<a class="nav_a" href="myPage.do">마이페이지</a>
			        		</p>
			        	</li>
			        </ul>
			    </c:if>
			    <c:if test="${empty sessionScope.sessionEmail}">
	        		<i class="lock"> 로그인을 하시면 다양한 정보를 보실 수 있습니다.</i>
			    	<ul class="nav-ul">
			        	<li class="nav-li">
			        		<p>
			        			<a class="nav_a" href="#"><b>사조경매가 처음이신가요?</b></a> 
			        			<a class="nav_a" href="signIn.do">로그인</a> 
			        			<a class="nav_a" href="signUp.do">회원가입</a> 
			        		</p>
			        	</li>
			        </ul>
			    </c:if>
			
	        
	    </div>
	    <div class="menubar" style="height: 100px;">
	    	<ul>
	    		<li><a href="main.do"><img class="auction" src="resources/img/img1.PNG"></a></li>
	    		<li style="width: 150px;">
	    			<a href="test2.do">온라인경매</a>
	    		</li>
	    		<li style="width: 150px;">
	    			<a href="test1.do">물품등록</a>
	    		</li>
	    		<li style="width: 150px;">
	    			<a href="capital.do">캐피탈</a>
	    			<ul class="li-2-submenu">
	    				<li><a href="capitalApply.do">전화상담신청</a></li>
	    				<li><a href="capitalChatbot.do">실시간톡톡상담</a></li>
	    			</ul>
	    		</li>
	    		<li style="width: 150px;">
	    			<a href="customer_service.do">고객센터</a>
	    		</li>
	    		<li style="width: 150px;">
	    			<a href="donation_main.do">기부</a>
	    			<ul class="li-2-submenu">
	    				<li><a href="donation_main.do">기부</a></li>
	    				<li><a href="event_main.do">응모</a></li>
	    			</ul>
	    		</li>
		    </ul>
		</div>
	</body>
</html>