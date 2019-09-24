<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!-- <html xmlns="http://www.w3.org/1999/xhtml"> -->
<html>
<head>
<meta charset="UTF-8">
<title>사조 경매 사이트</title>
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
<script type="text/javascript" src="resources/js/main.js" charset="UTF-8"></script>
</head>
<body>
	<!-- --------------경매TOP부분-------------- -->
	<div class="nav">
		<p>
			<i class="xi-unlock-o"></i> <i class="lock"> 로그인을 하시면 다양한 정보를 보실
				수 있습니다. </i>
		<form id="form1" runat="server">
			<div>
				<span id="clock"></span> <br />
			</div>
		</form>
		</p>
		<ul class="nav-ul">
			<li class="nav-li">
				<p>
					<a href="#"><b>관리자님 환영합니다.</b></a> <a href="#">로그아웃</a> 
				</p>
			</li>
		</ul>
	</div>
	<div class="menubar" style="height: 100px;">
		<ul>
			<li><a href="admin_main.do"><img class="auction" src="resources/img/img1.PNG"></a></li>
			<li style="width: 150px;"><a href="admin_member.do">회원관리</a></li>
			
			<li style="width: 150px;"><a href="#">게시물관리</a>
			<ul class="li-3-submenu">
				<li><a href="#">중고</a></li>
				<li><a href="#">경매</a></li>
				<li><a href="#">신고 접수된 게시글</a></li>
			</ul></li>

			<li style="width: 150px;"><a href="#">경매승인</a></li>
			
			<li style="margin-left: 20px; vertical-align: middle;">
				<form action="admin_member_select.do" method="post">
					<input type="text" name="email"> 
					<input type="submit" value="검색">
				</form>
			</li>
		</ul>
	</div>
	
	<div>
	</div>