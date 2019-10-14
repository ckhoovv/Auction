<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<!-- css -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="resources/css/signUp.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	$(function() {
		$("#submit").click(function(){
			var member_email = $("#member_email").val(); 
			var place = $("#place").val(); 
			var addr1 = $("#addr1").val(); 
			var addr2 = $("#addr2").val();
			var addr3 = $("#addr3").val();
			alert(member_email);
			alert(place);
			alert(addr1);
			alert(addr2);
			alert(addr3);
			$.ajax({
	            url:"admin_member_update.do",
				type:"post",
	            data: {
	            	"member_email" : member_email,
	            	"place" : place,
	            	"addr1" : addr1,
	            	"addr2" : addr2,
	            	"addr3" : addr3
	            },
	            success: function(result){
	            	alert("추가완료");
					window.opener.location.reload();
					window.close();
	            },
	            error : function(xhr, status) {
	               alert(xhr + " : " + status);
	            }
	        });// end ajax
		})
	});
</script>
</head>
<body>
	<h1>회원 정보 수정</h1>
	<c:forEach items="${addressList}" var="item" varStatus="i">
		<div class="table_center">
			<input type=hidden name="member_email" id="member_email" value=<c:out value="${item.member_email}" />></td>
			<table>
				<tr>
					<th>배송지 명</th>
					<td><input type="text" name="place" id="place" value=<c:out value="${item.place}"/> readonly ></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input type="text" name="addr1" id="addr1" value=<c:out value="${item.addr1}" />></td>
					<td><input type="text" name="addr2" id="addr2" value=<c:out value="${item.addr2}" />></td>
					<td><input type="text" name="addr3" id="addr3" value=<c:out value="${item.addr3}" />></td>
				</tr>
				<tr>
					<td><input type="button" id="submit" value="수정"/></td>
					<!-- <td><button onclick="parent.location.href='admin_member_update.do'" class="btn btn-lg btn-default">수정</button></td> -->
				</tr>
			</table>
		</div>
	</c:forEach>
</body>
</html>
