<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<form action="delete_popup.do">
			<table>
				<tr>
					<th colspan="2"> 내용 삭제 </th>
				</tr>
				<tr>
					<th> 글번호 </th>
					<td><input type="text" name="id"/></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="submit" value="전송"/></td>
				</tr>
			</table>
		</form>
	</body>
</html>