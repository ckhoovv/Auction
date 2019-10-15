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
		<div class="table_center"style="width: 30%; margin-left: 40%">
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
						<td> ${signUpDTO.addr1} </td>
					</tr>
					<tr>
						<td colspan="2" style="width: 200px; margin-left: 40%"> ${signUpDTO.addr2} </td>
					</tr>
					<tr>	
						<td colspan="2" style="width: 200px; margin-left: 40%"> ${signUpDTO.addr3} </td>
					</tr>
					<tr align="center"> 
						<th>이름 </th>
						<td>${signUpDTO.name}</td>
					</tr>
					<tr align="center"> 
						<th>전화번호 </th>
						<td>${signUpDTO.tel}</td>
					</tr>
					<tr align="center">
						<th colspan="2"><input type="submit" value="확인"></th>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>