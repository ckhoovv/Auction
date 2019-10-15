<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!-- <html xmlns="http://www.w3.org/1999/xhtml"> -->
<html>
<head>
<meta charset="UTF-8">
<title>사조 경매 사이트</title>
<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
<!-- <script type="text/javascript" src="resources/js/main.js" charset="UTF-8"></script> -->
<link rel="stylesheet"
	href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
<link href="resources/css/bootstrapCss/bootstrap.css" rel="stylesheet" />
<script type="text/javascript" src="resources/js/main.js"
	charset="UTF-8"></script>
</head>
<body>
	<!-- --------------경매TOP부분-------------- -->
	<div class="nav">
		<i class="xi-unlock-o"></i>
		<form id="form1" runat="server">
			<div>
				<span id="clock"></span> <br />
			</div>
		</form>
		<ul class="nav-ul" style="margin: 0px;">
			<li class="nav-li" style="display: inline;">
				<p style="display: inline;">
					<a href="#"><b>관리자님 환영합니다.</b></a> <a href="sessionLogout.do">로그아웃</a>
				</p>
			</li>
		</ul>
	</div>
	<div class="menubar" style="height: 100px;">
		<ul>
			<li><a href="admin_main.do"><img class="auction" src="resources/img/img1.PNG"></a></li>
			<li style="width: 150px;"><a href="admin_member.do">회원관리</a></li>
			<li style="width: 150px;"><a href="admin_apro_list.do">게시물관리</a></li>
			<li style="width: 150px;"><a href="admin_customer_service.do">고객센터</a></li>
			<li style="width: 150px;"><a href="">기부관리</a>
				<ul class="li-2-submenu">
					<li><a href="admin_donation.do">기부</a></li>
					<li><a href="admin_event.do">응모</a></li>
				</ul></li>
		</ul>
	</div>

	<div></div>