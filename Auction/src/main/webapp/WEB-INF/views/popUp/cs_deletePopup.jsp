<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
		<script type="text/javascript">
			$(function() {
				$("#submit").click(function(){
					var id = $("#id").val(); 
					alert(id);
					$.ajax({
			            url:"delete_popup.do",
			            data: {
			            	"id" : id,
			            },
			            success: function(result){
			            	alert("삭제완료");
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
		<table>
			<tr>
				<th colspan="2"> 내용 삭제 </th>
			</tr>
			<tr>
				<th> 글번호 </th>
				<td><input type="text" id="id" name="id"/></td>
			</tr>
			<tr align="center">
				<td colspan="2"><button id="submit">삭제하기</button></td>
			</tr>
		</table>
	</body>
</html>