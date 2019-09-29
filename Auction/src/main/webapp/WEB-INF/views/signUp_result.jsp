<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<!-- js -->
		<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	</head>
	<body>
		<jsp:include page="top.jsp" flush="false"></jsp:include>
		<form action="signIn.do">
			<table>
				<tr align="center"> 
					<th>이메일 </th>
					<td>${signUpDTO.email}</td>
				</tr>
				<tr align="center"> 
					<th>비밀번호</th>
					<td>${signUpDTO.pw}</td>
				</tr>
				<tr align="center"> 
					<th>생일 </th>
					<td>${signUpDTO.birth}</td>
				</tr>
				<tr align="center"> 
					<th>주소 </th>
					<td>${signUpDTO.addr1}</td>
					<td>${signUpDTO.addr2}</td>
					<td>${signUpDTO.addr3}</td>
				</tr>
				<tr align="center"> 
					<th>이름 </th>
					<td>${signUpDTO.name}</td>
				</tr>
				<tr align="center"> 
					<th>전화번호 </th>
					<td>${signUpDTO.tel}</td>
				</tr>
				<tr>
					<th colspan="2"><input type="submit" value="확인"></th>
				</tr>
			</table>
		</form>
	</body>
</html>