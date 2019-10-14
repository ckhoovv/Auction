<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<!-- css -->
<link href="resources/css/signUp.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<h1>회원 정보 수정</h1>
	<c:forEach items="${addressList}" var="item" varStatus="i">
		<div class="table_center">
		<form action="admin_member_update.do" method="post">
			<input type=hidden name="member_email" value=<c:out value="${item.member_email}" />></td>
			<table>
				<tr>
					<th>배송지 명</th>
					<td><input type="text" name="place" value=<c:out value="${item.place}"/> readonly ></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input type="text" name="addr1" value=<c:out value="${item.addr1}" />></td>
					<td><input type="text" name="addr2" value=<c:out value="${item.addr2}" />></td>
					<td><input type="text" name="addr3" value=<c:out value="${item.addr3}" />></td>
				</tr>
				<tr>
					<td><input type="submit" value="수정"/></td>
					<!-- <td><button onclick="parent.location.href='admin_member_update.do'" class="btn btn-lg btn-default">수정</button></td> -->
				</tr>
			</table>
		</form>
		</div>
	</c:forEach>
</body>
</html>
