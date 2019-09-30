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
		<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
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
	        <i class="lock"> 로그인을 하시면 다양한 정보를 보실 수 있습니다.</i>
	        <c:choose>
			    <c:when test="${not empty sessionScope.userLoginInfo}">
			        <ul class="nav-ul">
			        	<li class="nav-li">
			        		<p>
			        			<a class="nav_a" href="#"><b>사조경매가 처음이신가요?</b></a> 
			        			<a class="nav_a" href="signIn.do">로그인</a> 
			        			<a class="nav_a" href="signUp_ready.jsp">회원가입</a> 
			        		</p>
			        	</li>
			        </ul>
			    </c:when>
			    <c:otherwise>
			        <ul class="nav-ul">
			        	<li class="nav-li">
			        		<p>
			        			<a class="nav_a" href="#"><b>환영합니다.</b></a> 
			        			<a class="nav_a" href="sessionLogout.do">로그아웃</a> 
			        			<a class="nav_a" href="#">마이페이지</a>
			        		</p>
			        	</li>
			        </ul>
			    </c:otherwise>
			</c:choose>
	        
	    </div>
	    <div class="menubar" style="height: 100px;">
	    	<ul>
	    		<li><a href="#"><img class="auction" src="resources/img/img1.PNG"></a></li>
	    		<li style="width: 150px;">
	    			<a href="#">온라인경매</a>
	    			<ul class="li-2-submenu">
	    				<li><a href="#">민영경매</a></li>
	    				<li><a href="#">동원경매</a></li>
	    			</ul>
	    		</li>
	    		<li style="width: 150px;">
	    			<a href="#">전문쇼핑몰</a>
	    			<ul class="li-2-submenu">
	    				<li><a href="#">민영경매</a></li>
	    				<li><a href="#">동원경매</a></li>
	    			</ul>
	    		</li>
	    		<li style="width: 150px;">
	    			<a href="#">물품등록</a>
	    			<ul class="li-2-submenu">
	    				<li><a href="#">기훈경매</a></li>
	    				<li><a href="#">주호경매</a></li>
	    			</ul>
	    		</li>
	    		<li style="width: 150px;">
	    			<a href="capital.do">캐피탈</a>
	    			<ul class="li-2-submenu">
	    				<li><a href="capitalApply.do">전화상담신청</a></li>
	    				<li><a href="#">실시간톡톡상담</a></li>
	    			</ul>
	    		</li>
	    		<li style="width: 150px;">
	    			<a href="#">고객센터</a>
	    		</li>
	    		<li style="width: 150px;">
	    			<a href="donation_main.do">기부</a>
	    			<ul class="li-2-submenu">
	    				<li><a href="donation_main.do">기부</a></li>
	    				<li><a href="event_main.do">응모</a></li>
	    			</ul>
	    		</li>
    			<li>
    				<select style="margin-left: 20px;">
	    				<option value=1>전체</option>
	    				<option value=1>물품제목</option>
	    				<option value=1>판매자ID</option>
	    			</select>
	    		</li>
	    		<li style="margin-left: 20px; vertical-align: middle;">
	    			<form action="" method="post">
	    				<input type="text" name="search"> <input type="submit" value="검색">
	    			</form>
	    		</li>
		    </ul>
		</div>
	</body>
</html>