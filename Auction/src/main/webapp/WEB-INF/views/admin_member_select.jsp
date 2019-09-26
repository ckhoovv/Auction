<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>검색된 회원</title>
</head>
<body>
<hr>
${memberSelectOne}
이메일  :${memberDTO.email }<br>
이름  :${memberDTO.name }<br>
전번  :${memberDTO.tel }<br>
생년월일  :${memberDTO.birth }<br>
</body>
</html>