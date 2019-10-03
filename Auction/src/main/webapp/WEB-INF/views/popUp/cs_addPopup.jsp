<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<form action="insert_popup.do">
			<table>
				<tr>
					<th colspan="2"> 내용 추가 </th>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="c_tit"/></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><input type="text" name="c_con"/></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="submit" value="전송"/></td>
				</tr>
			</table>
		</form>
	</body>
</html>