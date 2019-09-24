<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<jsp:include page="top.jsp" flush="false"></jsp:include>
		<table>
			<tr align="center"> 
				<th>이메일 </th>
				<td>${memberInsertDTO.email}</td>
			</tr>
			<tr align="center"> 
				<th>비밀번호</th>
				<td>${memberInsertDTO.pw}</td>
			</tr>
			<tr align="center"> 
				<th>생일 </th>
				<td>${memberInsertDTO.birth}</td>
			</tr>
			<tr align="center"> 
				<th>주소 </th>
				<td>${addressInsertDTO.addr1}</td>
				<td>${addressInsertDTO.addr2}</td>
				<td>${addressInsertDTO.addr3}</td>
			</tr>
			<tr align="center"> 
				<th>이름 </th>
				<td>${memberInsertDTO.name}</td>
			</tr>
			<tr align="center"> 
				<th>전화번호 </th>
				<td>${memberInsertDTO.tel}</td>
			</tr>
		</table>
	</body>
</html>